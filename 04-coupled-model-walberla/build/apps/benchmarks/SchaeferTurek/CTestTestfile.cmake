# CMake generated Testfile for 
# Source directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/SchaeferTurek
# Build directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/SchaeferTurek
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
  add_test(SchaeferTurekTest "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/apps/benchmarks/SchaeferTurek/SchaeferTurek" "Test2D.dat")
  set_tests_properties(SchaeferTurekTest PROPERTIES  LABELS "" PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/SchaeferTurek/CMakeLists.txt;6;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/apps/benchmarks/SchaeferTurek/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
