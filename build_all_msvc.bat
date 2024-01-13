@echo off
set vcvarsall="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat"

if '%1' == '' (

    rm -rf ./lib
    rm -rf ./include

    cmd /c %0 x86
    cmd /c %0 x64

    mkdir include
    cp ryu/ryu/ryu.h ./include/


) else (

    call %vcvarsall% %1
    make CONFIG=release PLATFORM=%1
    make CONFIG=debug PLATFORM=%1

)
