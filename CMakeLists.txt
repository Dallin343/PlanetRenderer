cmake_minimum_required(VERSION 3.16)
project(PlanetRenderer)

set(CMAKE_CXX_STANDARD 17)

include_directories(
        vendor/FastNoise/include
        vendor/glad/include
        vendor/GLFW/include
        vendor/glm
)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(vendor/GLFW)

add_subdirectory(vendor/FastNoise)
add_subdirectory(vendor/glm)

add_library(Glad STATIC vendor/glad/include/glad/glad.h vendor/glad/src/glad.c)

add_executable(PlanetRenderer main.cpp src/VertexBuffer.cpp src/VertexBuffer.h src/VertexArray.cpp src/VertexArray.h src/Shader.cpp src/Shader.h ShaderSource.h src/IndexBuffer.cpp src/IndexBuffer.h src/Mesh.cpp src/Mesh.h)

find_package(OpenGL REQUIRED)

target_link_libraries(PlanetRenderer PRIVATE glm Glad glfw OpenGL::GL)