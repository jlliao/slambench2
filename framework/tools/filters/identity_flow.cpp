/*
 * identity.cpp
 *
 *  Created on: Nov 22, 2018
 *      Author: toky
 */

#include <SLAMBenchAPI.h>
#include <io/IdentityFrame.h>
#include <io/sensor/CameraSensorFinder.h>

bool sb_new_filter_configuration (SLAMBenchFilterLibraryHelper * filter_settings) {
	return true;
}

bool sb_init_filter (SLAMBenchFilterLibraryHelper * filter_settings) {
	return true;
}

bool sb_update_frame_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib, slambench::io::SLAMFrame * frame) {
	return lib->c_sb_update_frame(lib, frame);
}
bool sb_process_once_filter (SLAMBenchFilterLibraryHelper * , SLAMBenchLibraryHelper * lib) {
	return lib->c_sb_process_once(lib); 
}
