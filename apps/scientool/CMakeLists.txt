set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)


add_executable(scientool
    main.cpp
    src/MainWindow.cpp
    include/MainWindow.hpp
)

target_include_directories(scientool
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)



target_link_libraries(scientool
    PRIVATE
        scientool_core
        scientool_math
        scientool_ode
        scientool_physics
        scientool_plotting
        scientool_sim2d
        scientool_sim3d
        scientool_ui
        scientool_repl
        Qt6::Widgets
        Qt6::Gui
        Qt6::Core
)

