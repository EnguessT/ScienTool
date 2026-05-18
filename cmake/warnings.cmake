# ---------------------------------------------------------
# Project-only compiler warnings
# ---------------------------------------------------------
add_compile_options(
    -Wno-error=unused-but-set-variable
    -Wno-error=uninitialized
    -Wno-error=maybe-uninitialized
)

function(enable_project_warnings TARGET)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
        target_compile_options(${TARGET} PRIVATE
            -Wall
            -Wextra
            -Wpedantic
        )
    elseif(MSVC)
        target_compile_options(${TARGET} PRIVATE
            /W4 /permissive- /EHsc
        )
    endif()
endfunction()


