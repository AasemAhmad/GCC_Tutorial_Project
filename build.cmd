@echo on
set OLD_PATH=%PATH%
set PROJECT_DIR=%~dp0
set APP_DIR=%PROJECT_DIR%application\
set SRC_DIR=%PROJECT_DIR%src\
set BUILD_PATH=%APP_DIR%build_win
set COMPILER_PATH=C:\MinGW\bin
set PATH=%COMPILER_PATH%;%PATH%

if  exist %BUILD_PATH% (
    rmdir %BUILD_PATH% /q/s
   )
     mkdir %BUILD_PATH%
     cd %BUILD_PATH%
 	g++ -o main.exe ..\src\main.cpp
 	main.exe

rem set PATH=%OLD_PATH%