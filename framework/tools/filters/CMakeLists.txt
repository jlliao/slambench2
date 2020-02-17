cmake_minimum_required(VERSION 2.6.0)

if (NOT SLAMBENCH_INCLUDE_DIR)
  message( FATAL_ERROR "SLAMBENCH_INCLUDE_DIR not found")
endif()

add_library(identity-filter SHARED identity.cpp )
target_link_libraries(identity-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(identity-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR}) 

add_library(identity-flow-filter SHARED identity_flow.cpp )
target_link_libraries(identity-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(identity-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(skip-flow-filter SHARED skip_flow.cpp )
target_link_libraries(skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(multi-skip-flow-filter SHARED multi_skip_flow.cpp )
target_link_libraries(multi-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(multi-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(combine-skip-flow-filter SHARED combine_skip_flow.cpp )
target_link_libraries(combine-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(combine-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(rgb-skip-flow-filter SHARED rgb_skip_flow.cpp )
target_link_libraries(rgb-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(rgb-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(int-skip-flow-filter SHARED int_skip_flow.cpp )
target_link_libraries(int-skip-flow-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(int-skip-flow-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR})

add_library(skip-filter    SHARED  skip_frame.cpp )
target_link_libraries(skip-filter PRIVATE ${SLAMBENCH_C_WRAPPER} )
target_include_directories(skip-filter PRIVATE ${SLAMBENCH_INCLUDE_DIR}) 
        

