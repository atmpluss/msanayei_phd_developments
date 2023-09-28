# CMake generated Testfile for 
# Source directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather
# Build directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/gather
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(MPIGatherSchemeTest "/opt/homebrew/bin/mpiexec" "-n" "7" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/gather/MPIGatherSchemeTest")
set_tests_properties(MPIGatherSchemeTest PROPERTIES  LABELS "gather " PROCESSORS "7" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;12;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;0;")
add_test(CurveGatherTest "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/gather/CurveGatherTest")
set_tests_properties(CurveGatherTest PROPERTIES  LABELS "gather " PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;15;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;0;")
add_test(GatherSchemeTest "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/gather/GatherSchemeTest")
set_tests_properties(GatherSchemeTest PROPERTIES  LABELS "gather " PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;18;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/gather/CMakeLists.txt;0;")
