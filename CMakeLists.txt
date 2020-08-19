cmake_minimum_required(VERSION 3.0)

project(livox_penguin)

set(CMAKE_CXX_STANDARD 11)

find_package(PkgConfig)
pkg_check_modules(APR apr-1)

include_directories (${CMAKE_CURRENT_SOURCE_DIR}
SYSTEM
${APR_INCLUDE_DIRS}
${CMAKE_CURRENT_SOURCE_DIR}/lib
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/apr/apr-1.6.5
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/apr/apr-1.6.5/include
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/FastCRC
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/spdlog
${CMAKE_CURRENT_SOURCE_DIR}/lib/lvx_third_party/rapidxml/
)

add_executable (livox-penguin src/livox_getdata.cpp lib/lvx_file.cpp
  lib/lvx_third_party/FastCRC/FastCRCsw.cpp
  lib/lvx_base/io_loop.cpp
  lib/lvx_base/thread_base.cpp
  lib/lvx_base/io_thread.cpp
  lib/lvx_base/network_util.cpp
  lib/lvx_base/logging.cpp
  lib/lvx_base/util.cpp
  lib/livox_sdk.cpp
  lib/lvx_device_discovery.cpp
  lib/lvx_device_manager.cpp
  lib/lvx_comm/comm_port.cpp
  lib/lvx_comm/sdk_protocol.cpp
  lib/lvx_data_handler/data_handler.cpp
  lib/lvx_data_handler/hub_data_handler.cpp
  lib/lvx_data_handler/lidar_data_handler.cpp
  lib/lvx_command_handler/command_handler.cpp
  lib/lvx_command_handler/command_channel.cpp
  lib/lvx_command_handler/hub_command_handler.cpp
  lib/lvx_command_handler/lidar_command_handler.cpp
  lib/lvx_command_handler/command_impl.cpp
)
target_link_libraries (livox-penguin
  boost_system
  ${APR_LIBRARY_DIRS}/libapr-1.so
)
