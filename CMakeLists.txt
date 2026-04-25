cmake_minimum_required(VERSION 3.20)
project(Scientool LANGUAGES CXX)

# Build type
if(NOT CMAKE_BUILD_TYPE)
# set(CMAKE_BUILD_TYPE "Debug")
 set(CMAKE_BUILD_TYPE "Release")
endif()

# C++ Standard  default to c++20
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 20)
endif()

# Detect OS  and architecture
set(OSBits 32)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(OSBits 64)
endif()

# Output directories
set(OutputDir 
    "${CMAKE_SOURCE_DIR}/bin/${CMAKE_SYSTEM_NAME}"${OSBits}/${CMAKE_BUILD_TYPE}
)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${OutputDir}/static_libs/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${OutputDir}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${OutputDir}")

# Add build options and compiler warning
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    add_compile_options(-Wall -Wextra -Wpedantic -Werror)
elseif(MSVC)
    add_compile_options(/W4 /permissive- /EHsc)
endif()

# Find packages
# --- Qt6 
find_package(
    Qt6 REQUIRED COMPONENTS 
    Core 
    Gui 
    Widgets 
    Quick 
    QuickControls2
)

# --- Eigen
find_package(Eigen3 REQUIRED)
# --- GSL
find_package(GSL REQUIRED)
# --- Boost OdeInt
find_package(Boost REQUIRED)
# --- Matplot++
include(FetchContent)
#Disable unnecessary stuff
set(MATPLOT_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(MATPLOT_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(MATPLOT_BUILD_BENCHMARKS OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
    matplot++
    GIT_REPOSITORY https://github.com/alandefreitas/matplotplusplus.git
)
FetchContent_MakeAvailable(matplot++)

#set sources files
file(GLOB_RECURSE SOURCES
    ${CMAKE_SOURCE_DIR}/src/*.cpp
)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Include headers
target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_SOURCE_DIR}/include
)

# Link external libraries
target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
    Qt6::Quick 
    Qt6::QuickControls2
    Eigen3::Eigen
    GSL::gsl
    GSL::gslcblas
    Boost::boost
    matplot++
)

#Windows specific tweak 
if(MSVC)
    # Avoid MSVC path issues
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)
    # Disable min/max macros
    target_compile_definitions(${PROJECT_NAME} PRIVATE NOMIMAX)
endif()

