@echo off

set ROOT=%CD%\..

call %ROOT%\exe\env.cmd SnowRunner

rmdir /s /q "%SAVE_DIR%" 2> NUL
xcopy .\_backup "%SAVE_DIR%" /e /q /r /y /v /i

rem rmdir /s /q .\_restore 2> NUL
rem xcopy .\_backup .\_restore /e /q /r /y /v /i

echo.
pause