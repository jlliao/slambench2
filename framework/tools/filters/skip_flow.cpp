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
	std::random_device rd;
	std::mt19937_64 gen(rd());
	slambench::io::SLAMFrame *filtered_frame = nullptr;
	int upper_range = 1.0 / probability;
	std::uniform_int_distribution<> dis(1, upper_range);

	// Randomly drop a frame
	if (dis(gen) == 1) {
		std::cout << "** Skip one frame." << std::endl; // skip frame
	} else {
		filtered_frame = new IdentityFrame(frame); // assigns new_frame to a copy of curent_frame
	}
	
	bool ongoing = false;
	// Update the frame
	if (filtered_frame) {
		ongoing = not lib->c_sb_update_frame(lib, filtered_frame);
	} else {
		ongoing = true;
	}

	// Free the copy
	if (filtered_frame) {
		filtered_frame->FreeData();
		delete filtered_frame;
	}
	
	return ongoing;
}

bool sb_process_once_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib) {
	return lib->c_sb_process_once(lib); 
}
