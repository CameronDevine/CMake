# Installs CMakeCache.txt, environment and information about git repository

include(GitInfo)

install (PROGRAMS "${CMAKE_CURRENT_BINARY_DIR}/CMakeCache.txt" DESTINATION
  share/${PROJECT_NAME}/CMake/BuildParams)

execute_process(COMMAND env OUTPUT_VARIABLE environment)
# TODO: write ${environment} and ${GIT_FOO} variables to file and install it
