# ---------------------------------------------------------
# Build type
# ---------------------------------------------------------
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# ---------------------------------------------------------
# C++ standard
# ---------------------------------------------------------
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# ---------------------------------------------------------
# Detect OS and architecture
# ---------------------------------------------------------
set(OSBits 32)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(OSBits 64)
endif()

# ---------------------------------------------------------
# Output directories
# ---------------------------------------------------------
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${CMAKE_SYSTEM_NAME}${OSBits}/${CMAKE_BUILD_TYPE})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${CMAKE_SYSTEM_NAME}${OSBits}/${CMAKE_BUILD_TYPE})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${CMAKE_SYSTEM_NAME}${OSBits}/${CMAKE_BUILD_TYPE})


# ---------------------------------------------------------
# MSVC-specific tweaks
# ---------------------------------------------------------
if(MSVC)
    # Enable folder grouping in Visual Studio
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)

    # Disable Windows min/max macros globally
    add_compile_definitions(NOMINMAX)
endif()

