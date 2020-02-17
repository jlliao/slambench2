/*
 * combinedrop_flow.cpp
 *
 *  Created on: Nov 22, 2019
 *      Author: jianglong
 */

#include <SLAMBenchAPI.h>
#include <io/IdentityFrame.h>
#include <io/sensor/CameraSensorFinder.h>
#include <io/sensor/DepthSensor.h>
#include <array>
#include <deque>
#include <tuple>

struct ScalarComparer {
    bool operator()(const sb_float3 &v1, const sb_float3 &v2) {
        return (v1.x < v2.x) ||
               (v1.x == v2.x && v1.y < v2.y) ||
               (v1.x == v2.x && v1.y == v2.y && v1.z < v2.z);
    }
};

// ********* [[ GLOBAL VARIABLES ]] *********
double threshold = 0;
double default_threshold = 0.0001;
static slambench::io::DepthSensor *depth_sensor;
static slambench::io::CameraSensor *grey_sensor;
static slambench::io::CameraSensor *rgb_sensor;
std::vector<float> hist_old_depth, hist_old_intensity;
std::vector<int> mask_old;
float contrib_depth, contrib_intensity;
std::vector<sb_float3> normal_bins;
// const int order = 0; // order of subdivisions of hemisphere
int order = 0; // order of subdivisions of hemisphere
float a = 1 / sqrt(5);
float b = 2 * a;
float c = (1 + a) / 2;
float d = (1 - a) / 2;
float e = sqrt(d);
float f = sqrt(c);

std::deque<slambench::io::SLAMFrame*> buffered_rgb;
std::deque<slambench::io::SLAMFrame*> buffered_int;
std::deque<slambench::io::SLAMFrame*> buffered_depth;

std::vector<sb_float3> verts = {
                                {make_sb_float3( 0,  0,  1),
                                 make_sb_float3( b,  0,  a),
                                 make_sb_float3( d,  f,  a),
                                 make_sb_float3(-c,  e,  a),
                                 make_sb_float3(-c, -e,  a),
                                 make_sb_float3( d, -f,  a),
                                 make_sb_float3(-d,  f, -a),
                                 make_sb_float3( c,  e, -a),
                                 make_sb_float3( c, -e, -a),
                                 make_sb_float3(-d, -f, -a),
                                 make_sb_float3(-b,  0, -a),
                                 make_sb_float3( 0,  0, -1)}
};

std::vector<std::array<sb_float3, 3>> tris = {
                                               {{verts[ 0], verts[ 1], verts[ 2]},
                                                {verts[ 0], verts[ 2], verts[ 3]},
                                                {verts[ 0], verts[ 3], verts[ 4]},
                                                {verts[ 0], verts[ 4], verts[ 5]},
                                                {verts[ 0], verts[ 5], verts[ 1]},
                                                {verts[ 7], verts[ 1], verts[ 2]},
                                                {verts[ 6], verts[ 2], verts[ 3]},
                                                {verts[10], verts[ 3], verts[ 4]},
                                                {verts[ 9], verts[ 4], verts[ 5]},
                                                {verts[ 8], verts[ 5], verts[ 1]},
                                                {verts[ 3], verts[ 6], verts[10]},
                                                {verts[ 2], verts[ 7], verts[ 6]},
                                                {verts[ 1], verts[ 8], verts[ 7]},
                                                {verts[ 5], verts[ 9], verts[ 8]},
                                                {verts[ 4], verts[10], verts[ 9]},
                                                {verts[11], verts[ 6], verts[10]},
                                                {verts[11], verts[ 7], verts[ 6]},
                                                {verts[11], verts[ 8], verts[ 7]},
                                                {verts[11], verts[ 9], verts[ 8]},
                                                {verts[11], verts[10], verts[ 9]}}
};

// ********* [[ AUXILLARY FUNCTIONS ]] *********

sb_float3 add_sb_float3(sb_float3 arg1, sb_float3 arg2)
{
	float x = arg1.x + arg2.x;
	float y = arg1.y + arg2.y;
	float z = arg1.z + arg2.z;
	sb_float3 result = make_sb_float3(x, y, z);

	return result;
}

sb_float3 div_sb_float3(sb_float3 numerator, float denominator)
{
	float x = numerator.x / denominator;
	float y = numerator.y / denominator;
	float z = numerator.z / denominator;
	sb_float3 result = make_sb_float3(x, y, z);

	return result;
}

float norm_sb_float3(sb_float3 input)
{
	float magnitude = sqrt((input.x * input.x) +
						   (input.y * input.y) +
						   (input.z * input.z));

	return magnitude;
}

sb_float3 normalize_sb_float3(sb_float3 input)
{
	float magnitude = sqrt((input.x * input.x) +
						   (input.y * input.y) +
						   (input.z * input.z));
	sb_float3 normalized = make_sb_float3(input.x / magnitude,
										  input.y / magnitude,
										  input.z / magnitude);

	return normalized;
}

int count_non_zero(const std::vector<int> &mask)
{
	int count = 0;
	for (auto index : mask)
	{
		count += (index != 0);
	}

	return count;
}

std::vector<int> invert_mask(const std::vector<int> &mask)
{
	std::vector<int> inverted_mask;
	for (auto index : mask)
	{
		inverted_mask.push_back(!index);
	}

	return inverted_mask;
}

std::vector<sb_float3> remove_zeroes(std::vector<sb_float3> &norm_map,
									 const std::vector<int> &mask)
{
	for (size_t i = 0; i < norm_map.size(); i++)
	{
		if (mask[i])
		{
			norm_map[i] = make_sb_float3(0, 0, 0);
		}
	}

	return norm_map;
}

std::vector<int> merge_masks(const std::vector<int> &old_mask,
							 const std::vector<int> &new_mask,
							 std::vector<int> &output_mask)
{
	for (size_t i = 0; i < old_mask.size(); i++)
	{
		output_mask.push_back(old_mask[i] || new_mask[i]);
	}

	return output_mask;
}

std::vector<sb_float3> depth_to_norm(slambench::io::SLAMFrame *frame)
{
	unsigned short *depthStartPtr = (unsigned short *)frame->GetData();
	std::vector<sb_float3> norms;
	int width = depth_sensor->Width;
	int height = depth_sensor->Height;
	float fx = depth_sensor->Intrinsics[0];
	float fy = depth_sensor->Intrinsics[1];
	float d11, d12, d21, d22, z;

	for (int r = 0; r < height; r++)
	{
		for (int c = 0; c < width; c++)
		{
			if ((r * width + c + 1) % width)
			{
				if (r == (height - 1))
				{
					if (c == (width - 1))
					{ // bottomright pixel
						d11 = depthStartPtr[(r * width) + c];
						d12 = d11;
						d21 = d11;
						d22 = d11;
					}
					else
					{ // in last row
						d11 = depthStartPtr[(r * width) + c];
						d12 = depthStartPtr[(r * width) + c + 1];
						d21 = d11;
						d22 = d12;
					}
				}
				else
				{
					d11 = depthStartPtr[(r * width) + c];
					d12 = depthStartPtr[(r * width) + c + 1];
					d21 = depthStartPtr[((r + 1) * width) + c];
					d22 = depthStartPtr[((r + 1) * width) + c + 1];
				}
			}
			else
			{ // reached right-most pixel
				d11 = depthStartPtr[(r * width) + c];
				d12 = d11;
				d21 = depthStartPtr[((r + 1) * width) + c];
				d22 = d21;
			}
			if (d11 && d12 && d21 && d22)
			{
				z = (d11 + d12 + d21 + d22) / 4;
				norms.push_back(normalize_sb_float3(make_sb_float3(-(fx / z) * (d12 + d22 - d21 - d11) / 2,
																   -(fy / z) * (d21 + d22 - d12 - d11) / 2,
																   1.0)));
			}
			else
			{
				norms.push_back(make_sb_float3(0, 0, 0));
			}
		}
	}

	frame->FreeData();
	return norms;
}

std::vector<int> calc_mask(std::vector<sb_float3> normal_map)
{
	std::vector<int> norms_mask;
	for (auto pixel : normal_map)
	{
		// fills norms_mask with 1s in indexes where there are 0 values in x, y, and z
		norms_mask.push_back((pixel.x == 0) && (pixel.y == 0) && (pixel.z == 0));
	}

	return norms_mask;
}

void calc_intensity_histogram(slambench::io::SLAMFrame *frame,
							  std::vector<float> &hist,
							  float contrib)
{
	std::fill(hist.begin(), hist.end(), 1e-10);

	// get start and end pointers for given frame
	unsigned char *imageStart = (unsigned char *)frame->GetData(); // get pointer to first pixel value
	unsigned char *imageEnd = imageStart + frame->GetSize();	   // add respective frame size

	// loop through histogram and add occurances of values 0-255 to respective bins
	std::for_each(imageStart, imageEnd, [&](unsigned char intensity) {
		if (intensity != 0)
		{
			hist[intensity - 1] += contrib;
		}
	});
	frame->FreeData();
}

void calc_depth_histogram(std::vector<sb_float3> norms,
						  std::vector<float> &hist,
						  float contrib_depth)
{
	std::vector<float> x, y, z, new_dot_prod, mask, index, max_dot_prod;
	std::fill(hist.begin(), hist.end(), 1e-10);
	max_dot_prod = std::vector<float>(norms.size(), 1e-10);
	index = std::vector<float>(norms.size());

	for (size_t n = 0; n < normal_bins.size(); n++)
	{
		// std::cout << "Entering dot product loop...\n";
		// std::cout << "normal map of size: " << norms.size() << "\n";
		for (size_t idx = 0; idx < norms.size(); idx++)
		{
			// calculate dot product
			x.push_back(norms[idx].x * normal_bins[n].x);
			y.push_back(norms[idx].y * normal_bins[n].y);
			z.push_back(norms[idx].z * normal_bins[n].z);
			new_dot_prod.push_back(x[idx] + y[idx] + z[idx]);
			// std::cout << "Dot product: " << new_dot_prod[idx] << "\n";
			// store indexes of dot products that exceed previous max_dot_prod
			mask.push_back(new_dot_prod[idx] > max_dot_prod[idx]);
			if (mask[idx])
			{
				index[idx] = n;						   // set bin
				max_dot_prod[idx] = new_dot_prod[idx]; // update max dot product
			}
		}
	}
	// bin normals
	for (size_t idx = 0; idx < norms.size(); idx++)
	{
		if ((index[idx] >= 0) && (index[idx] < 26))
		{
			hist[index[idx]] += contrib_depth;
		}
	}
}

float calc_kl_divergence(const std::vector<float> &hist_new,
						 const std::vector<float> &hist_old)
{
	float kl_divergence = 0;
	for (size_t bin = 0; bin < normal_bins.size(); bin++)
	{
		kl_divergence += hist_new[bin] * log(hist_new[bin] / hist_old[bin]);
	}

	return kl_divergence;
}

void init_normal_bins(std::vector<std::array<sb_float3, 3>> tris,
					  std::vector<sb_float3> &normal_bins, // normal bins will be initialised here
					  int order)
{ // order of subdivisions (starting from 0)
	for (int o = 0; o <= order; o++)
	{
		std::vector<std::array<sb_float3, 3>> tris_next;
		for (auto &tri : tris)
		{
			std::array<sb_float3, 3> mid = {
				(div_sb_float3(add_sb_float3(tri[0], tri[1]), norm_sb_float3(add_sb_float3(tri[0], tri[1])))),
				(div_sb_float3(add_sb_float3(tri[1], tri[2]), norm_sb_float3(add_sb_float3(tri[1], tri[2])))),
				(div_sb_float3(add_sb_float3(tri[2], tri[0]), norm_sb_float3(add_sb_float3(tri[2], tri[0]))))};
			std::array<sb_float3, 3> top{
				tri[0],
				mid[0],
				mid[2]};
			std::array<sb_float3, 3> lft{
				tri[1],
				mid[0],
				mid[1]};
			std::array<sb_float3, 3> rgt{
				tri[2],
				mid[1],
				mid[2]};
			tris_next.push_back(mid);
			tris_next.push_back(top);
			tris_next.push_back(lft);
			tris_next.push_back(rgt);
		}
		tris = tris_next;
	}

	std::set<sb_float3, struct ScalarComparer> normals_set;
	for (auto &tri : tris)
	{
		for (auto &vert : tri)
		{
			if (vert.z >= 0)
			{
				normals_set.insert(vert);
			}
		}
	}

	normal_bins = std::vector<sb_float3>(normals_set.begin(), normals_set.end());
}

void print(std::vector<float> const &input) {
	for (int i = 0; i < input.size(); i++) {
		std::cout << input.at(i) << ' ';
	}
}

// ********* [[ FILTER FUNCTIONS ]] *********

bool sb_new_filter_configuration(SLAMBenchFilterLibraryHelper *filter_settings)
{
	// initialise filter with threshold parameter
	filter_settings->addParameter(TypedParameter<double>("fth",
														 "skip-threshold",
														 "Numerical value to specify KL divergence threshold",
														 &threshold,
														 &default_threshold));
	return true;
}

bool sb_init_filter (SLAMBenchFilterLibraryHelper * filter_settings) {
	// Initialise sensors
	slambench::io::CameraSensorFinder sensor_finder;
	depth_sensor = (slambench::io::DepthSensor *) sensor_finder.FindOne(filter_settings->get_sensors(),
										{{"camera_type", "depth"}});
	grey_sensor = sensor_finder.FindOne(filter_settings->get_sensors(),
										{{"camera_type", "grey"}});
	rgb_sensor = sensor_finder.FindOne(filter_settings->get_sensors(),
										{{"camera_type", "rgb"}});
	assert(rgb_sensor);  // make sure sensor is found
	assert(depth_sensor);
	assert(grey_sensor);
	init_normal_bins(tris, normal_bins, order);
		
	return true;
}
bool sb_update_frame_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib, slambench::io::SLAMFrame * frame) {
	bool enough = false;
	std::vector<float> hist_new_intensity, hist_new_depth;

	// buffering grey frames
	if (frame->FrameSensor == (slambench::io::Sensor *)grey_sensor){
		std::cout << "grey frame " << std::endl;
		// initialise histogram from first frame
		contrib_intensity = 1 / (float)(frame->GetSize()); // set contribution according to first frame resolution
		if (!hist_old_intensity.size()){
			hist_old_intensity.resize(255);
			calc_intensity_histogram(frame, hist_old_intensity, contrib_intensity);
		}

		slambench::io::SLAMFrame* grey_frame = new IdentityFrame(frame);
		buffered_int.push_back(grey_frame);
	}
	
	// buffering depth frames
	if (frame->FrameSensor == (slambench::io::Sensor *)depth_sensor){
		std::cout << "depth frame " << std::endl;

		if (!hist_old_depth.size()){
			// initialise histogram and mask for first frame
			std::vector<sb_float3> norms = depth_to_norm(frame);
			hist_old_depth.resize(normal_bins.size());
			mask_old = calc_mask(norms);
			contrib_depth = (float)1 / count_non_zero(invert_mask(mask_old));
			std::vector<sb_float3> masked_norms = remove_zeroes(norms, mask_old);
			calc_depth_histogram(masked_norms, hist_old_depth, contrib_depth);
		}

		slambench::io::SLAMFrame* depth_frame = new IdentityFrame(frame);
		buffered_depth.push_back(depth_frame);
	}

	// buffering rgb frames
	if (frame->FrameSensor == (slambench::io::Sensor *)rgb_sensor){
		std::cout << "rgb frame " << std::endl;
		slambench::io::SLAMFrame* rgb_frame = new IdentityFrame(frame);
		buffered_rgb.push_back(rgb_frame);
	}

	// check whether the filter has enough frames
	if (!buffered_rgb.empty() && !buffered_int.empty() && !buffered_depth.empty()) {

		slambench::io::SLAMFrame* last_intensity_frame = buffered_int.back();
		slambench::io::SLAMFrame* last_depth_frame = buffered_depth.back();
		slambench::io::SLAMFrame* last_rgb_frame = buffered_rgb.back();

		//*** compute divergence for intensity
		hist_new_intensity = std::vector<float>(255); // might need to be 256 as values are 0-255

		// calculate KL divergence from previous histogram
		calc_intensity_histogram(last_intensity_frame, hist_new_intensity, contrib_intensity);
		float intensity_divergence = calc_kl_divergence(hist_new_intensity, hist_old_intensity);
		// print(hist_new_intensity);
		// print(hist_old_intensity);
		std::cout << "intensity_divergence = " << abs(intensity_divergence) << std::endl;

		//*** compute divergence for depth
		frame -> FreeData();
		std::vector<sb_float3> norms = depth_to_norm(last_depth_frame);
		hist_new_depth = std::vector<float>(normal_bins.size());
		std::vector<int> mask_new = calc_mask(norms);
		std::vector<int> mask_combined;
		merge_masks(mask_old, mask_new, mask_combined);
		float contrib_depth = (float)1 / count_non_zero(invert_mask(mask_combined));

		// calculate KL divergence from previous histogram
		calc_depth_histogram(remove_zeroes(norms, mask_new), hist_new_depth, contrib_depth);
		float depth_divergence = calc_kl_divergence(hist_new_depth, hist_old_depth);
		std::cout << "depth_divergence = " << abs(depth_divergence) << std::endl;

		float combined_divergence = abs(intensity_divergence) + abs(depth_divergence);
		std::cout << "combined_divergence = " << combined_divergence << std::endl;

		// compare histogram with threshold
		if (combined_divergence < threshold) {
			std::cout << "** Drop all buffered frames." << std::endl; // skip frame
			buffered_int.clear();
			buffered_depth.clear();
			buffered_rgb.clear();
			return enough;
		} else { 
			// send the frames to update if no enough frame for algo
			std::deque<slambench::io::SLAMFrame*> filtered_frames;
			filtered_frames.push_back(last_rgb_frame);
			filtered_frames.push_back(last_intensity_frame);
			filtered_frames.push_back(last_depth_frame);

			// update histograms
			hist_old_intensity = hist_new_intensity;
			hist_old_depth = hist_new_depth;
			do {
				// check if there are frames in buffer
				if (!filtered_frames.empty()) {
					slambench::io::SLAMFrame* new_frame = filtered_frames.front();
					frame -> FreeData();
					enough = lib->c_sb_update_frame(lib, new_frame); // update frame
					filtered_frames.pop_front();
					new_frame->FreeData();
					delete new_frame;
				
					// clear buffer if there are enough frames for algo
					if (enough) {
						buffered_int.clear();
						buffered_depth.clear();
						buffered_rgb.clear();
					}
				} else {
					return enough;
				}
			} while (!enough);
		}
	}

	return enough;
}

bool sb_process_once_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib) {
	return lib->c_sb_process_once(lib); 
}
