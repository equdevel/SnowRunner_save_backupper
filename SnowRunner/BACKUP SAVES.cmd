@echo off

set ROOT=%CD%\..

call %ROOT%\exe\env.cmd SnowRunner

rmdir /s /q _backup 2> NUL
xcopy "%SAVE_DIR%" .\_backup /e /q /r /y /v /i

echo.
pause