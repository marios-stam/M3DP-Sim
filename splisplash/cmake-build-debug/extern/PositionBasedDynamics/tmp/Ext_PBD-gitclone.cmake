
if(NOT "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt" IS_NEWER_THAN "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git" "Ext_PBD"
    WORKING_DIRECTORY "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout b142aad449337cc091611d79a5f1fff85ccc6c40 --
  WORKING_DIRECTORY "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'b142aad449337cc091611d79a5f1fff85ccc6c40'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt"
    "/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/jason/splisplash/cmake-build-debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'")
endif()

