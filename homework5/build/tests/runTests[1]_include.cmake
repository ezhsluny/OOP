if(EXISTS "/home/ezhsluny/Documents/C++/OOP/homework5/build/tests/runTests[1]_tests.cmake")
  include("/home/ezhsluny/Documents/C++/OOP/homework5/build/tests/runTests[1]_tests.cmake")
else()
  add_test(runTests_NOT_BUILT runTests_NOT_BUILT)
endif()
