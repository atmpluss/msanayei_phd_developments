//======================================================================================================================
/*!
 *  \file   waLBerlaBuildInfo.in.cpp
 *  \brief  Configured by CMake, contains information about the current build
 */
//======================================================================================================================


namespace walberla {
namespace core {
namespace buildinfo {
   
const char * gitSHA1()       { return "7087ee40c9e4d1749f941f3414462b629899a6a9";       }
const char * buildType()     { return "Release";     }
const char * compilerFlags() { return "-O3 -DNDEBUG  -Wall -Wconversion -Wshadow -Wno-c++11-extensions -Qunused-arguments -pthread "; }
const char * buildMachine()  { return "mohammads-MBP-2.fritz.box";  }
const char * sourceDir()     { return "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla";     }
const char * binaryDir()     { return "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build";     }

} // namespace buildinfo
} // namespace core
} // namespace walberla 

