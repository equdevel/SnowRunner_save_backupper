@echo off

set ROOT=%CD%\..

call %ROOT%\exe\env.cmd SnowRunner

rmdir /s /q save_backup 2> NUL
xcopy "%SAVE_DIR%" .\save_backup /e /q /r /y /v /i

echo.
pause