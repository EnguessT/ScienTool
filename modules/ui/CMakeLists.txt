set (LIB_NAME scientool_ui)
add_library(${LIB_NAME}
   
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
        Qt6::Core
        Qt6::Gui 
        Qt6::Widgets
    	Qt6::Quick 
    	Qt6::QuickControls2 
     
)
