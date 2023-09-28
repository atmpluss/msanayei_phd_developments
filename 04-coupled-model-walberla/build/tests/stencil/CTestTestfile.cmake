# CMake generated Testfile for 
# Source directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/stencil
# Build directory: /Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/stencil
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(StencilTest "/opt/homebrew/bin/mpiexec" "-n" "1" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "-oversubscribe" "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/build/tests/stencil/StencilTest")
set_tests_properties(StencilTest PROPERTIES  LABELS "stencil " PROCESSORS "1" _BACKTRACE_TRIPLES "/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/cmake/waLBerlaFunctions.cmake;359;add_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/stencil/CMakeLists.txt;9;waLBerla_execute_test;/Users/mohammadsanayei/Desktop/FBAM-tryAdding Cohesion/walberla/tests/stencil/CMakeLists.txt;0;")
