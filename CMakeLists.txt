cmake_minimum_required(VERSION 3.21)
project(Schedulix)

set(CMAKE_CXX_STANDARD 14)

# Find Poco
find_package(Poco REQUIRED
        Foundation
        Util
        Net
        JSON
        Data)

# Add executable
add_executable(${PROJECT_NAME} src/main.cpp)

# To be able to use your custom header files
target_include_directories(${PROJECT_NAME}  PRIVATE
        ${CMAKE_CURRENT_BINARY_DIR} src)

# Link Poco
target_link_libraries(${PROJECT_NAME} PRIVATE
        ${Poco_LIBRARIES})