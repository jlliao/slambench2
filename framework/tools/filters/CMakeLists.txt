cmake_minimum_required(VERSION 2.6.0)

if (NOT SLAMBENCH_INCLUDE_DIR)
  message( FATAL_ERROR "SLAMBENCH_INCLUDE_DIR not found")
endif()

add_library(identity-flow-filter SHARED identity_flow.cpp )
target_link_libraries(identity-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(identity-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(skip-flow-filter SHARED skip_flow.cpp )
target_link_libraries(skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(combine-skip-flow-filter SHARED combine_skip_flow.cpp )
target_link_libraries(combine-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(combine-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(int-skip-flow-filter SHARED int_skip_flow.cpp )
target_link_libraries(int-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(int-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(depth-skip-flow-filter SHARED depth_skip_flow.cpp )
target_link_libraries(depth-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(depth-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})
        

