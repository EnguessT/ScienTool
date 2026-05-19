
# ---------------------------------------------------------
# Qt6
# ---------------------------------------------------------
find_package(Qt6 REQUIRED COMPONENTS 
    Core 
    Gui 
    Widgets 
    Quick 
    QuickControls2
    OpenGLWidgets
    Quick3D
    Quick3DAssetImport
    Quick3DAssetUtils
    Quick3DPhysics
    Quick3DParticles
)

# ---------------------------------------------------------
# Eigen
# ---------------------------------------------------------
find_package(Eigen3 REQUIRED)

# ---------------------------------------------------------
# GSL
# ---------------------------------------------------------
find_package(GSL REQUIRED)

# ---------------------------------------------------------
# Boost Odeint
# ---------------------------------------------------------
find_package(Boost REQUIRED)

# ---------------------------------------------------------
# FetchContent 
# ---------------------------------------------------------
include(FetchContent)

# ---------------------------------------------------------
# SFML
# ---------------------------------------------------------
set(SFML_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(SFML_BUILD_TESTS OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
    sfml
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.6.1
)
FetchContent_MakeAvailable(sfml)

# ---------------------------------------------------------
# Box2D
# ---------------------------------------------------------
#Disable unnecessary stuff
set(BOX2D_BUILD_TESTBED OFF CACHE BOOL "" FORCE)
set(BOX2D_BUILD_UNIT_TESTS OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
    box2d
    GIT_REPOSITORY https://github.com/erincatto/box2d.git
    GIT_TAG v2.4.1
)
FetchContent_MakeAvailable(box2d)

# ---------------------------------------------------------
# Matplot++
# ---------------------------------------------------------
#Disable unnecessary stuff
set(MATPLOT_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(MATPLOT_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(MATPLOT_BUILD_BENCHMARKS OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
    matplot
    GIT_REPOSITORY https://github.com/alandefreitas/matplotplusplus.git
)
FetchContent_MakeAvailable(matplot)

# ---------------------------------------------------------
# Hobbes
# ---------------------------------------------------------
add_library(hobbes STATIC IMPORTED)

set_target_properties(hobbes PROPERTIES
    IMPORTED_LOCATION "${CMAKE_SOURCE_DIR}/external/hobbes/lib/libhobbes.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_SOURCE_DIR}/external/hobbes/include"
)


# ---------------------------------------------------------
# Python
# ---------------------------------------------------------
add_library(Python3_Embed SHARED IMPORTED)

set_target_properties(Python3_Embed PROPERTIES
   IMPORTED_LOCATION_RELEASE "${CMAKE_SOURCE_DIR}/external/python/lib/libpython3.8.so"
   IMPORTED_LOCATION_DEBUG   "${CMAKE_SOURCE_DIR}/external/python/lib/libpython3.8.so"
   INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_SOURCE_DIR}/external/python/include/python3.8"

)

# ---------------------------------------------------------
# Lua
# ---------------------------------------------------------
add_library(lua SHARED IMPORTED)

set_target_properties(lua PROPERTIES
    IMPORTED_LOCATION "${CMAKE_SOURCE_DIR}/external/lua/lib/liblua5.3.so"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_SOURCE_DIR}/external/lua/include/lua5.3"
)
