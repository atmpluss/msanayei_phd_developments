
# Benchmarks
if ( WALBERLA_BUILD_BENCHMARKS )
    add_subdirectory ( benchmarks )
else ()
    add_subdirectory ( benchmarks EXCLUDE_FROM_ALL )
endif()


# Tools
if ( WALBERLA_BUILD_TOOLS )
    add_subdirectory ( tools )
else ()
    add_subdirectory ( tools EXCLUDE_FROM_ALL )
endif()


# Tutorials
if ( WALBERLA_BUILD_TUTORIALS )
    add_subdirectory ( tutorials )
else ()
    add_subdirectory ( tutorials EXCLUDE_FROM_ALL )
endif()

# Showcases
if ( WALBERLA_BUILD_SHOWCASES )
    add_subdirectory ( showcases )
else ()
    add_subdirectory ( showcases EXCLUDE_FROM_ALL )
endif()


# Python module
if ( WALBERLA_BUILD_WITH_PYTHON )
    add_subdirectory( pythonmodule )
endif()

#add_subdirectory ( bam )
add_subdirectory ( cohesion )


