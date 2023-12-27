# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\ElementsPositioning_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\ElementsPositioning_autogen.dir\\ParseCache.txt"
  "ElementsPositioning_autogen"
  )
endif()
