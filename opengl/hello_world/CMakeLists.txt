cmake_minimum_required(VERSION 3.10)
project(HelloWorld
        VERSION 0.1
        LANGUAGES C
      )

find_package(PkgConfig REQUIRED)
pkg_check_modules(GLFW REQUIRED glfw3)

include_directories(include ${GLFW_INCLUDE_DIRS})
add_executable(
  main 
  src/main.c 
  src/glad.c 
  src/utils/file_io.c
  src/utils/sys_info.c
)
target_link_libraries(main 
    PRIVATE 
    ${GLFW_LIBRARIES} 
    m
    dl
)
