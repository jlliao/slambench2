/*
 * skip_flow.cpp
 *
 *  Created on: Nov 22, 2019
 *      Author: jianglong
 */

#include <SLAMBenchAPI.h>
#include <io/IdentityFrame.h>
#include <io/sensor/CameraSensorFinder.h>
#include <random>

double probability = 0;
double default_probability = 0.1;
static slambench::io::CameraSensor *grey_sensor;
int num_frame = 0;
int skipped_frame = 0;

bool sb_new_filter_configuration (SLAMBenchFilterLibraryHelper * filter_settings) {
	// initialise filter with probability parameter
	filter_settings->addParameter(TypedParameter<double>("fth",
														 "skip-probability",
														 "Numerical value to specify probability of dropping frame",
														 &probability,
														 &default_probability));
	return true;
}

bool sb_init_filter (SLAMBenchFilterLibraryHelper * filter_settings) {
	// Initialise sensors
	slambench::io::CameraSensorFinder sensor_finder;
	grey_sensor = sensor_finder.FindOne(filter_settings->get_sensors(),
										{{"camera_type", "grey"}});
	assert(grey_sensor);

	return true;
}

bool sb_update_frame_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib, slambench::io::SLAMFrame * frame) {
	// Randomize dropping
	bool enough = false;
	num_frame = num_frame + 1;

	std::random_device rd;
	std::mt19937_64 gen(rd());
	slambench::io::SLAMFrame *new_frame = nullptr;
	int upper_range = 1.0 / probability;
	std::uniform_int_distribution<> dis(1, upper_range);

	// Randomly drop a frame
	if (dis(gen) == 1) {
		std::cout << "** Skip one frame." << std::endl; // skip frame
		skipped_frame = skipped_frame + 1;
	} else {
		new_frame = new IdentityFrame(frame); // assigns new_frame to a copy of curent_frame
		enough = lib->c_sb_update_frame(lib, new_frame);
		new_frame->FreeData();
		delete new_frame;
	}
	
	float skipped_rate = (float)skipped_frame / (float)num_frame;
	std::cout << "skipped rate = " << skipped_rate << std::endl;
	return enough;
}

bool sb_process_once_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib) {
	return lib->c_sb_process_once(lib); 
}
