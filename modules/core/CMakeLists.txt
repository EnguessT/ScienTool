add_library(scientool_math
    src/Vector.cpp
    src/Matrix.cpp
)

target_include_directories(scientool_math
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(scientool_math
    PUBLIC
        Eigen3::Eigen
        scientool_core
)

