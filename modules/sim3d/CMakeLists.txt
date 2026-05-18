set (LIB_NAME scientool_sim3d)
add_library(${LIB_NAME}
   src/placeholder.cpp
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
        Qt6::Core
        Qt6::Gui
        Qt6::OpenGL
        Qt6::OpenGLWidgets
        Qt6::Quick
	Qt6::Quick3D
	Qt6::Quick3DAssetImport
    	Qt6::Quick3DAssetUtils
    	Qt6::Quick3DPhysics
    	Qt6::Quick3DParticles
     
)
