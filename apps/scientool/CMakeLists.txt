set(EXEC_NAME Scientool)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

qt_standard_project_setup(REQUIRES 6.5)

add_executable(${EXEC_NAME}
    main.cpp
)

target_include_directories(${EXEC_NAME}
    PRIVATE
		${CMAKE_CURRENT_SOURCE_DIR}/include
		${CMAKE_SOURCE_DIR}/external/hobbes/include
)



qt_add_qml_module(${EXEC_NAME}
		URI Scientool
		VERSION 1.0
		RESOURCE_PREFIX "/"
		QML_FILES
			qml/Main.qml
			qml/components/mainwindow/HeaderBar.qml

)

# ---------------------------------------------------------
# QML Module
# ---------------------------------------------------------
target_link_libraries(${EXEC_NAME}
    PRIVATE
		Qt6::Core
        Qt6::Gui
        Qt6::Qml
		Qt6::Quick
		Qt6::QuickControls2

        scientool_core
        scientool_math
        scientool_ode
        scientool_physics
        scientool_plotting
        scientool_sim2d
        scientool_sim3d
        scientool_ui
        scientool_repl
        scientool_repl_hobbes
        scientool_repl_python
        scientool_repl_lua
)

