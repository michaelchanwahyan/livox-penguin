cmake_minimum_required(VERSION 3.0)

project(livox_penguin)

set(CMAKE_CXX_STANDARD 11)

include_directories (${CMAKE_CURRENT_SOURCE_DIR}
SYSTEM
${CMAKE_CURRENT_SOURCE_DIR}/lib
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/apr/apr-1.6.5
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/apr/apr-1.6.5/include
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/FastCRC
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/spdlog
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/rapidxml/
)

add_library (livox_sdk SHARED lib/livox_sdk.cpp)
target_link_libraries (livox_sdk PUBLIC
  boost_system
  lvx_device_discovery
  lvx_device_manager
)

add_library (lvx_device_discovery SHARED lib/lvx_device_discovery.cpp)
target_link_libraries (lvx_device_discovery PUBLIC
  boost_system
)

add_library (lvx_device_manager SHARED lib/lvx_device_manager.cpp)
target_link_libraries (lvx_device_manager PUBLIC
  boost_system
)

add_library(lvx_file SHARED lib/lvx_file.cpp)
target_link_libraries (lvx_file PUBLIC
  lvx_device_discovery
  lvx_device_manager
  livox_sdk
)

#add_executable (livox-penguin src/livox_getdata.cpp)
#target_link_libraries (livox-penguin
#  lvx_device_discovery
#  lvx_device_manager
#  livox_sdk
#  lvx_file
#)
