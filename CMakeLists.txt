cmake_minimum_required(VERSION 3.20)
project(Scientool VERSION 1.0.0 LANGUAGES CXX)

# ---------------------------------------------------------
# Load reusable CMake logic
# ---------------------------------------------------------
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(options)        # build options
include(warnings)       # compiler warnings
include(dependencies)   # Qt, Eigen, GSL, Boost, Matplot++

# ---------------------------------------------------------
# Add modules
# ---------------------------------------------------------
add_subdirectory(modules/core)
add_subdirectory(modules/math)
add_subdirectory(modules/ode)
add_subdirectory(modules/physics)
add_subdirectory(modules/plotting)
add_subdirectory(modules/sim2d)
add_subdirectory(modules/sim3d)
add_subdirectory(modules/ui)
add_subdirectory(modules/repl)

# ---------------------------------------------------------
# Add applications
# ---------------------------------------------------------
add_subdirectory(apps/scientool)

# ---------------------------------------------------------
# Examples and tests
# ---------------------------------------------------------
add_subdirectory(examples)
add_subdirectory(tests)

