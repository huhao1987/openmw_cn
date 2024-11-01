@echo off
setlocal
pushd %~dp0

cd ..

xcopy /y /e files\data\*                     MSVC2022_64\Debug\resources\vfs\
xcopy /y /e files\data-mw\*                  MSVC2022_64\Debug\resources\vfs-mw\
xcopy /y /e files\lua_api\*                  MSVC2022_64\Debug\resources\lua_api\
xcopy /y /e files\shaders\*                  MSVC2022_64\Debug\resources\shaders\
xcopy /y    files\opencs\defaultfilters      MSVC2022_64\Debug\resources\
xcopy /y    files\launcher\images\openmw.png MSVC2022_64\Debug\resources\
xcopy /y    files\pinyin.txt                 MSVC2022_64\Debug\
rem xcopy /y files\MyGUIEngine_d.dll         MSVC2022_64\Debug\

xcopy /y /e files\data\*                     MSVC2022_64\RelWithDebInfo\resources\vfs\
xcopy /y /e files\data-mw\*                  MSVC2022_64\RelWithDebInfo\resources\vfs-mw\
xcopy /y /e files\lua_api\*                  MSVC2022_64\RelWithDebInfo\resources\lua_api\
xcopy /y /e files\shaders\*                  MSVC2022_64\RelWithDebInfo\resources\shaders\
xcopy /y    files\opencs\defaultfilters      MSVC2022_64\RelWithDebInfo\resources\
xcopy /y    files\launcher\images\openmw.png MSVC2022_64\RelWithDebInfo\resources\
xcopy /y    files\MyGUIEngine.dll            MSVC2022_64\RelWithDebInfo\
xcopy /y    files\pinyin.txt                 MSVC2022_64\RelWithDebInfo\

xcopy /y /e files\data\*                     MSVC2022_64\Release\resources\vfs\
xcopy /y /e files\data-mw\*                  MSVC2022_64\Release\resources\vfs-mw\
xcopy /y /e files\lua_api\*                  MSVC2022_64\Release\resources\lua_api\
xcopy /y /e files\shaders\*                  MSVC2022_64\Release\resources\shaders\
xcopy /y    files\opencs\defaultfilters      MSVC2022_64\Release\resources\
xcopy /y    files\launcher\images\openmw.png MSVC2022_64\Release\resources\
xcopy /y    files\MyGUIEngine.dll            MSVC2022_64\Release\
xcopy /y    files\pinyin.txt                 MSVC2022_64\Release\
xcopy /y    files\*_reset.cfg                MSVC2022_64\Release\
xcopy /y    files\reset_cfg.bat              MSVC2022_64\Release\
xcopy /y    readme-zh_CN.txt                 MSVC2022_64\Release\

xcopy /y    %SystemRoot%\System32\vcruntime140.dll   MSVC2022_64\Release\
xcopy /y    %SystemRoot%\System32\vcruntime140_1.dll MSVC2022_64\Release\
xcopy /y    %SystemRoot%\System32\msvcp140.dll       MSVC2022_64\Release\
xcopy /y    %SystemRoot%\System32\msvcp140_1.dll     MSVC2022_64\Release\
xcopy /y    %SystemRoot%\System32\msvcp140_2.dll     MSVC2022_64\Release\

del MSVC2022_64\Debug\resources\vfs\CMakeLists.txt
del MSVC2022_64\Debug\resources\vfs-mw\CMakeLists.txt
del MSVC2022_64\Debug\resources\lua_api\CMakeLists.txt
del MSVC2022_64\Debug\resources\shaders\CMakeLists.txt

del MSVC2022_64\RelWithDebInfo\resources\vfs\CMakeLists.txt
del MSVC2022_64\RelWithDebInfo\resources\vfs-mw\CMakeLists.txt
del MSVC2022_64\RelWithDebInfo\resources\lua_api\CMakeLists.txt
del MSVC2022_64\RelWithDebInfo\resources\shaders\CMakeLists.txt

del MSVC2022_64\Release\resources\vfs\CMakeLists.txt
del MSVC2022_64\Release\resources\vfs-mw\CMakeLists.txt
del MSVC2022_64\Release\resources\lua_api\CMakeLists.txt
del MSVC2022_64\Release\resources\shaders\CMakeLists.txt

pause

rem https://github.com/mikeakohn/print_pe
rem for %%a in (..\MSVC2022_64\Release\*.exe)                  do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\*.dll)                  do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\iconengines\*.dll)      do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\imageformats\*.dll)     do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\osgPlugins-3.6.5\*.dll) do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\platforms\*.dll)        do @print_pe.exe %%a | findstr "ModuleName:"
rem for %%a in (..\MSVC2022_64\Release\styles\*.dll)           do @print_pe.exe %%a | findstr "ModuleName:"
