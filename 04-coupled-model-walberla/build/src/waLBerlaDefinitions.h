//======================================================================================================================
/*!
 *  \file   waLBerlaDefinitions.in.h
 *  \author Martin Bauer <martin.bauer@fau.de>
 *  \brief  Global Definitions configured by cmake ( edit only the *.in.h file! )
 */
//======================================================================================================================


#pragma once


// double or single precision
#define WALBERLA_DOUBLE_ACCURACY


// Debugging options
/* #undef WALBERLA_ENABLE_GUI */


// External libraries
/* #undef WALBERLA_BUILD_WITH_BOOST */
#define WALBERLA_BUILD_WITH_MPI
/* #undef WALBERLA_BUILD_WITH_OPENMP */
/* #undef WALBERLA_BUILD_WITH_METIS */
/* #undef WALBERLA_BUILD_WITH_PARMETIS */

/* #undef WALBERLA_BUILD_WITH_PYTHON */

/* #undef WALBERLA_BUILD_WITH_FFT */

/* #undef WALBERLA_BUILD_WITH_OPENMESH */
/* #undef WALBERLA_MESAPD_CONVEX_POLYHEDRON_AVAILABLE */

/* #undef WALBERLA_BUILD_WITH_CUDA */

/* #undef WALBERLA_BUILD_WITH_CODEGEN */

/* #undef WALBERLA_BUFFER_DEBUG */

#define WALBERLA_THREAD_SAFE_LOGGING

/* #undef WALBERLA_STL_BOUNDS_CHECKS */

// Compiler
/* #undef WALBERLA_CXX_COMPILER_IS_GNU */
/* #undef WALBERLA_CXX_COMPILER_IS_INTEL */
/* #undef WALBERLA_CXX_COMPILER_IS_IBM */
/* #undef WALBERLA_CXX_COMPILER_IS_MSVC */
#define WALBERLA_CXX_COMPILER_IS_CLANG

/* #undef WALBERLA_USE_STD_EXPERIMENTAL_FILESYSTEM */
/* #undef WALBERLA_USE_STD_EXPERIMENTAL_ANY */
#define WALBERLA_BUILD_WITH_BACKTRACE
#ifdef WALBERLA_BUILD_WITH_BACKTRACE
#define WALBERLA_BACKTRACE_HEADER "execinfo.h"
#endif

// SIMD
/* #undef WALBERLA_SIMD_FORCE_SCALAR */

// Version Information
#define WALBERLA_MAJOR_VERSION  7
#define WALBERLA_PATCH_LEVEL    0
#define WALBERLA_VERSION_STRING "7.0"

#define WALBERLA_VERSION_CALC(MAJOR, PATCH) \
   ((MAJOR)*100+(PATCH))
#define WALBERLA_VERSION \
   WALBERLA_VERSION_CALC(WALBERLA_MAJOR_VERSION,WALBERLA_PATCH_LEVEL)
#define WALBERLA_VERSION_COMPARE(OP,MAJOR,PATCH) \
    (WALBERLA_VERSION OP WALBERLA_VERSION_CALC(MAJOR,PATCH))

// Generic helper definitions for shared library support
#if defined _WIN32 || defined __CYGWIN__
  #define WALBERLA_SHARED_LIB_IMPORT __declspec(dllimport)
  #define WALBERLA_SHARED_LIB_EXPORT __declspec(dllexport)
  #define WALBERLA_SHARED_LIB_LOCAL
#else
  #if __GNUC__ >= 4
    #define WALBERLA_SHARED_LIB_IMPORT __attribute__ ((visibility ("default")))
    #define WALBERLA_SHARED_LIB_EXPORT __attribute__ ((visibility ("default")))
    #define WALBERLA_SHARED_LIB_LOCAL  __attribute__ ((visibility ("hidden")))
  #else
    #define WALBERLA_SHARED_LIB_IMPORT
    #define WALBERLA_SHARED_LIB_EXPORT
    #define WALBERLA_SHARED_LIB_LOCAL
  #endif
#endif

// Now we use the generic helper definitions above to define WALBERLA_PUBLIC, WALBERLA_PROTECTED
// and WALBERLA_PRIVATE. WALBERLA_PUBLIC is for symbols part of the public application programming
// interface (API), WALBERLA_PROTECTED is for symbols used e.g. by public templated or
// inlined code. These symbols must also be publicly available when compiling the
// application. WALBERLA_PRIVATE are symbols for internal use inside the library only.

#ifdef WALBERLA_SHARED_LIB_BUILD
   // defined if waLBerla is compiled as a shared library
   #ifdef WALBERLA_SHARED_LIB_SELECT_EXPORTS
      // defined if we are building the WALBERLA SHARED_LIB (instead of using it)
      #define WALBERLA_PUBLIC WALBERLA_SHARED_LIB_EXPORT
   #else
      #define WALBERLA_PUBLIC WALBERLA_SHARED_LIB_IMPORT
   #endif
   #define WALBERLA_PRIVATE WALBERLA_SHARED_LIB_LOCAL
#else
   // WALBERLA_SHARED_LIB is not defined: this means waLBerla is a static library
   #define WALBERLA_PUBLIC
   #define WALBERLA_PRIVATE
#endif
#define WALBERLA_PROTECTED WALBERLA_PUBLIC
