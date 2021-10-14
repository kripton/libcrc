## Include this file if you want to use libcrc
## in YOUR (Pico) project.

cmake_minimum_required(VERSION 3.12)

# Define the libcrc library
add_library(libcrc INTERFACE)

target_sources(libcrc INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/src/crc8.c
    ${CMAKE_CURRENT_LIST_DIR}/src/crc16.c
## Those two algorithms require pre-generated tables:
#    ${CMAKE_CURRENT_LIST_DIR}/src/crc32.c
#    ${CMAKE_CURRENT_LIST_DIR}/src/crc64.c
    ${CMAKE_CURRENT_LIST_DIR}/src/crcccitt.c
    ${CMAKE_CURRENT_LIST_DIR}/src/crcdnp.c
    ${CMAKE_CURRENT_LIST_DIR}/src/crckrmit.c
    ${CMAKE_CURRENT_LIST_DIR}/src/crcsick.c
    ${CMAKE_CURRENT_LIST_DIR}/src/nmea-chk.c
)

target_include_directories(libcrc INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/include/
)
