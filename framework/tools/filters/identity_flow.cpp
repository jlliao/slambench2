/*
 * identity_flow.cpp
 *
 *  Created on: Nov 22, 2019
 *      Author: jianglong
 */

#include <SLAMBenchAPI.h>
#include <io/IdentityFrame.h>
#include <io/sensor/CameraSensorFinder.h>
#include <tuple>

bool sb_new_filter_configuration (SLAMBenchFilterLibraryHelper * filter_settings) {
	return true;
}

bool sb_init_filter (SLAMBenchFilterLibraryHelper * filter_settings) {
	return true;
}

std::tuple<bool, bool> sb_update_frame_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib, slambench::io::SLAMFrame * frame) {
	// Create a copy
	slambench::io::SLAMFrame * filtered_frame = new IdentityFrame(frame);
	bool ongoing = not lib->c_sb_update_frame(lib, filtered_frame);
	// Free the copy
	filtered_frame->FreeData();
	delete filtered_frame;
	return std::make_tuple(ongoing, true);
}

bool sb_process_once_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib) {
	return lib->c_sb_process_once(lib); 
}
