cmake_minimum_required(VERSION 4.4.0)
project(musicli)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

find_package(PkgConfig REQUIRED)
pkg_check_modules(LUAJIT REQUIRED IMPORTED_TARGET luajit)
pkg_check_modules(NCURSESW REQUIRED IMPORTED_TARGET ncursesw)

add_executable(musicli
  src/config.c
  src/config.h
  src/main.c
)
target_include_directories(musicli PRIVATE include)
target_link_libraries(musicli PRIVATE
  PkgConfig::LUAJIT
  PkgConfig::NCURSESW
)
