#!/bin/bash
# This shell snippet appends useful esp-idf tools to your PATH environment
# variable. This means you can run esp-idf tools without needing to give the
# full path.
#
# Use this script like this:
#
# . ${IDF_PATH}/add_path.sh
#
#if [ -z ${IDF_PATH} ]; then
#	echo "IDF_PATH must be set before including this script."
#else
IDF_PATH="/home/tony/esp/"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}/components/esptool_py/esptool"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}/components/espcoredump"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}/components/partition_table/"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}/tools/"
IDF_ADD_PATHS_EXTRAS="${IDF_ADD_PATHS_EXTRAS}:${IDF_PATH}/xtensa-esp32-elf/bin/"
#PATH="${IDF_ADD_PATHS_EXTRAS}:${PATH}"
echo "export PATH=\"\$PATH${IDF_ADD_PATHS_EXTRAS}\";export IDF_PATH=\"${IDF_PATH}\""
#fi


