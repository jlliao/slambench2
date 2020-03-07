#include <SLAMBenchAPI.h>
#include <io/IdentityFrame.h>
#include <io/sensor/CameraSensorFinder.h>

double threshold = 0;
double default_threshold = 0.005;
static slambench::io::CameraSensor *rgb_sensor;
std::vector<float> hist_old_r;
std::vector<float> hist_old_g;
std::vector<float> hist_old_b;
std::map<char, std::vector<float> *> hists_old; // store histograms for R, G, and B values in map
float contrib;									// assuming that all frames have the same resolution

void calc_histogram(slambench::io::SLAMFrame *frame, std::vector<float> &hist,
					float contrib, char channel)
{
	std::fill(hist.begin(), hist.end(), 1e-10);

	// get start and end pointers for given frame
	unsigned char *imageStart = (unsigned char *)frame->GetData(); // get pointer to first pixel value

	switch (channel)
	{
	case 'r':
		break;
	case 'g':
		*imageStart += 1;
		break;
	case 'b':
		*imageStart += 2;
		break;
	default:
		throw std::logic_error("unhandled channel");
	}
	// loop through histogram and add occurances of values 0-255 (by channel) to respective bins
	// assuming that RGB values are interleaved: r1, g1, b1, r2, g2, b2, r3,...
	for (auto i = 0; i <= 255; i++)
	{
		if (imageStart[(i * 3)] != 0)
		{
			hist[imageStart[(i * 3)] - 1] += contrib;
		}
	}

	frame->FreeData();
}

float calc_kl_divergence(const std::vector<float> &hist_new,
						 const std::vector<float> &hist_old)
{
	float kl_divergence = 0;
	for (int bin = 0; bin < 255; bin++)
	{
		kl_divergence += hist_new[bin] * log(hist_new[bin] / hist_old[bin]); // they use log2 for some reason
	}
	return kl_divergence;
}

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

bool sb_init_filter(SLAMBenchFilterLibraryHelper *filter_settings)
{
	// Initialise sensors
	slambench::io::CameraSensorFinder sensor_finder;
	rgb_sensor = sensor_finder.FindOne(filter_settings->get_sensors(),
									   {{"camera_type", "rgb"}});
	assert(rgb_sensor); // make sure sensor is found
	return true;
}
// TODO Update calc_histogram instances for each channel
bool sb_update_frame_filter(SLAMBenchFilterLibraryHelper *,
							SLAMBenchLibraryHelper *lib,
							slambench::io::SLAMFrame *frame)
{
	bool enough = false;
	slambench::io::SLAMFrame *new_frame = nullptr;

	if (frame->FrameSensor != (slambench::io::Sensor *)rgb_sensor)
	{
		new_frame = new IdentityFrame(frame);
		enough = lib->c_sb_update_frame(lib, new_frame);
		new_frame->FreeData();
		delete new_frame;
		return enough;
	}

	float contrib = 1 / (float)(frame->GetSize()); // set contribution according to first frame resolution

	// initialise histograms for each channel of first frame
	if (hists_old.find('r') == hists_old.end())
	{
		hist_old_r.resize(255);
		calc_histogram(frame, hist_old_r, contrib, 'r');
		hists_old.insert(std::pair<char, std::vector<float> *>('r', &hist_old_r));
	}
	if (hists_old.find('g') == hists_old.end())
	{
		hist_old_g.resize(255);
		calc_histogram(frame, hist_old_g, contrib, 'g');
		hists_old.insert(std::pair<char, std::vector<float> *>('g', &hist_old_g));
	}
	if (hists_old.find('b') == hists_old.end())
	{
		hist_old_b.resize(255);
		calc_histogram(frame, hist_old_b, contrib, 'b');
		hists_old.insert(std::pair<char, std::vector<float> *>('b', &hist_old_b));
	}

	std::vector<float> hist_new_r = std::vector<float>(255);
	std::vector<float> hist_new_g = std::vector<float>(255);
	std::vector<float> hist_new_b = std::vector<float>(255);
	// calculate intensity distributions for new frame
	calc_histogram(frame, hist_new_r, contrib, 'r');
	calc_histogram(frame, hist_new_g, contrib, 'g');
	calc_histogram(frame, hist_new_b, contrib, 'b');
	// compare old and new frames
	float kl_divergence = (calc_kl_divergence(hist_new_r, *hists_old.at('r')) +
						   calc_kl_divergence(hist_new_g, *hists_old.at('g')) +
						   calc_kl_divergence(hist_new_b, *hists_old.at('b'))) /
						  3;
	std::cout << "kl_divergence = " << kl_divergence << std::endl;
	if (kl_divergence < threshold)
	{
		std::cout << "** Skip one frame." << std::endl; // skip frame
	}
	else
	{
		new_frame = new IdentityFrame(frame); // assigns new_frame to a copy of curent_frame
		enough = lib->c_sb_update_frame(lib, new_frame);

		hists_old['r'] = &hist_new_r;
		hists_old['g'] = &hist_new_g;
		hists_old['b'] = &hist_new_b; // update histogram to compare new frames against
		new_frame->FreeData();
		delete new_frame;
	}

	return enough;
}

bool sb_process_once_filter(SLAMBenchFilterLibraryHelper *, SLAMBenchLibraryHelper *lib)
{
	return lib->c_sb_process_once(lib);
}