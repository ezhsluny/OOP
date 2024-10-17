include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
)
FetchContent_MakeAvailable(googletest)

add_executable(runTests test_homework5.cpp)

target_link_libraries(runTests gtest gtest_main)

include(GoogleTest)
gtest_discover_tests(runTests)
