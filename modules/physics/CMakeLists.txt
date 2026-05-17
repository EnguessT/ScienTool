set (LIB_NAME scientool_physics)
add_library(${LIB_NAME}
   
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PUBLIC
    	scientool_core
    	scientool_math
        scientool_ode
    PRIVATE
        Eigen3::Eigen
        GSL::gsl
        Boost::boost 
        GSL::gslcblas  
)

