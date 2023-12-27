# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "AnchorsLayout_autogen"
  "CMakeFiles\\AnchorsLayout_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\AnchorsLayout_autogen.dir\\ParseCache.txt"
  )
endif()
