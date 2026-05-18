set (LIB_NAME scientool_ode)
add_library(${LIB_NAME}
    src/placeholder.cpp
    #src/ODEIntegrator.cpp
    #src/RungeKutta.cpp
    #src/GslWrapper.cpp
    #src/OdeintWrapper.cpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PUBLIC
    	scientool_core
    	scientool_math
    PRIVATE
        Eigen3::Eigen
        GSL::gsl
        GSL::gslcblas
        Boost::boost 
          
)

enable_project_warnings(scientool_ode)
