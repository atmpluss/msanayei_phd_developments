# CMake generated Testfile for 
# Source directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest
# Build directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(BlockIDTest "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/BlockIDTest")
set_tests_properties(BlockIDTest PROPERTIES  LABELS "blockforest longrun" PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;8;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
  add_test(SetupBlockForestTest "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/SetupBlockForestTest")
  set_tests_properties(SetupBlockForestTest PROPERTIES  LABELS "blockforest longrun" PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;357;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;11;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
endif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Bb][Gg][Ii][Nn][Ff][Oo])$")
add_test(BlockForestTest "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/BlockForestTest")
set_tests_properties(BlockForestTest PROPERTIES  LABELS "blockforest " PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;14;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(DeterministicCreation "/opt/homebrew/bin/mpiexec" "-n" "8" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/DeterministicCreation")
set_tests_properties(DeterministicCreation PROPERTIES  LABELS "blockforest " PROCESSORS "8" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;17;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(SaveLoad01 "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/SaveLoad")
set_tests_properties(SaveLoad01 PROPERTIES  LABELS "blockforest " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;20;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(SaveLoad02 "/opt/homebrew/bin/mpiexec" "-n" "2" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/SaveLoad")
set_tests_properties(SaveLoad02 PROPERTIES  DEPENDS "SaveLoad01" LABELS "blockforest " PROCESSORS "2" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;21;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(SaveLoad04 "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/SaveLoad")
set_tests_properties(SaveLoad04 PROPERTIES  DEPENDS "SaveLoad02" LABELS "blockforest " PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;22;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(SaveLoad08 "/opt/homebrew/bin/mpiexec" "-n" "8" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/SaveLoad")
set_tests_properties(SaveLoad08 PROPERTIES  DEPENDS "SaveLoad04" LABELS "blockforest " PROCESSORS "8" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;23;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(StructuredBlockForestTest "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/StructuredBlockForestTest")
set_tests_properties(StructuredBlockForestTest PROPERTIES  LABELS "blockforest " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;31;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(BlockDataIOTest1 "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/BlockDataIOTest")
set_tests_properties(BlockDataIOTest1 PROPERTIES  LABELS "blockforest " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;34;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(BlockDataIOTest3 "/opt/homebrew/bin/mpiexec" "-n" "3" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/BlockDataIOTest")
set_tests_properties(BlockDataIOTest3 PROPERTIES  DEPENDS "BlockDataIOTest1" LABELS "blockforest " PROCESSORS "3" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;35;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(BlockDataIOTest8 "/opt/homebrew/bin/mpiexec" "-n" "8" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/BlockDataIOTest")
set_tests_properties(BlockDataIOTest8 PROPERTIES  DEPENDS "BlockDataIOTest3" LABELS "blockforest " PROCESSORS "8" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;36;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(GhostLayerCommTest1 "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/GhostLayerCommTest")
set_tests_properties(GhostLayerCommTest1 PROPERTIES  LABELS "blockforest " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;48;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(GhostLayerCommTest4 "/opt/homebrew/bin/mpiexec" "-n" "4" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/GhostLayerCommTest")
set_tests_properties(GhostLayerCommTest4 PROPERTIES  LABELS "blockforest " PROCESSORS "4" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;49;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(GhostLayerCommTest8 "/opt/homebrew/bin/mpiexec" "-n" "8" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/GhostLayerCommTest")
set_tests_properties(GhostLayerCommTest8 PROPERTIES  LABELS "blockforest " PROCESSORS "8" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;50;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(DirectionBasedReduceCommTest1 "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/DirectionBasedReduceCommTest")
set_tests_properties(DirectionBasedReduceCommTest1 PROPERTIES  LABELS "blockforest " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;53;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(DirectionBasedReduceCommTest3 "/opt/homebrew/bin/mpiexec" "-n" "3" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/DirectionBasedReduceCommTest")
set_tests_properties(DirectionBasedReduceCommTest3 PROPERTIES  LABELS "blockforest " PROCESSORS "3" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;54;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
add_test(DirectionBasedReduceCommTest8 "/opt/homebrew/bin/mpiexec" "-n" "8" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/blockforest/DirectionBasedReduceCommTest")
set_tests_properties(DirectionBasedReduceCommTest8 PROPERTIES  LABELS "blockforest " PROCESSORS "8" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;55;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/blockforest/CMakeLists.txt;0;")
