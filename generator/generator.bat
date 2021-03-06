:: this script must be executed in this directory
:: all the output goes to generated folder
:: .cpp and .h files:
:: cimgui.h and cimgui.cpp generated without preprocess
:: cimgui_auto.h and cimgui_auto.cpp with gcc preprocess
:: cimgui_impl.h with implementation function cdefs
:: lua and json files:
:: definitions.lua for function definitions
:: structs_and_enums.lua with struct and enum information-definitions
:: impl_definitions.lua for implementation function definitions

:: set your PATH if necessary for LuaJIT or Lua5.1 or luajit with: (for example)
 set PATH=%PATH%;C:\luaGL;C:\mingw32\bin;

::process  files
:: arg[1..n] name of implementations to generate
luajit.exe ./generator.lua glfw opengl3 opengl2 sdl

::copy cimgui.h and cimgui.cpp
copy .\generated\cimgui_auto.h ..\cimgui_auto.h
copy .\generated\cimgui_auto.cpp ..\cimgui_auto.cpp

::leave console open
cmd /k

