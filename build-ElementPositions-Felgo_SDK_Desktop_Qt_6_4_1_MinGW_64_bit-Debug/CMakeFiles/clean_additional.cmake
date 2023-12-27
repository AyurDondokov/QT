# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\ElementPositions_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\ElementPositions_autogen.dir\\ParseCache.txt"
  "ElementPositions_autogen"
  )
endif()
