# CMake generated Testfile for 
# Source directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow
# Build directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
  add_test(CouetteFlowTestNoCheckRelease "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/TestNoCheck.dat" "--trt" "--linear-exp")
  set_tests_properties(CouetteFlowTestNoCheckRelease PROPERTIES  LABELS "" PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;10;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg]|[Dd][Ee][Bb][Uu][Gg][Oo][Pp][Tt][Ii][Mm][Ii][Zz][Ee][Dd])$")
  add_test(CouetteFlowTestNoCheckDebug "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/TestNoCheck.dat" "--trt" "--linear-exp")
  set_tests_properties(CouetteFlowTestNoCheckDebug PROPERTIES  LABELS "longrun" PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;11;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg]|[Dd][Ee][Bb][Uu][Gg][Oo][Pp][Tt][Ii][Mm][Ii][Zz][Ee][Dd])$")
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
  add_test(CouetteFlowTest0 "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/Test0.dat" "--trt" "--linear-exp")
  set_tests_properties(CouetteFlowTest0 PROPERTIES  LABELS "longrun" PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;13;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
  add_test(CouetteFlowTest2 "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/CouetteFlow/CouetteFlow" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/Test2.dat" "--trt" "--linear-exp")
  set_tests_properties(CouetteFlowTest2 PROPERTIES  LABELS "longrun;verylongrun" PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;14;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/CouetteFlow/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")