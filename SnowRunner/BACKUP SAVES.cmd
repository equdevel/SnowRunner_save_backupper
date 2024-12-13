@echo off

set ROOT=%CD%\..

call %ROOT%\exe\env.cmd SnowRunner

if exist "%SAVE_DIR%\" (
    rmdir /s /q _backup 2> NUL
    xcopy "%SAVE_DIR%" .\_backup /e /q /r /y /v /i
) else (
    echo Save directory not found!
)

echo.
pause