add_executable(scientool
    main.cpp
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
)

