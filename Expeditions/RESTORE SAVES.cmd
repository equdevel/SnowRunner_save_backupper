@echo off

set ROOT=%CD%\..

call %ROOT%\exe\env.cmd Expeditions

if exist ".\_backup\" (
    if exist "%SAVE_DIR%\" (
        rmdir /s /q "%SAVE_DIR%" 2> NUL
        xcopy .\_backup "%SAVE_DIR%" /e /q /r /y /v /i
    ) else (
        echo Save directory not found!
    )
) else (
    echo Backup directory not found!
)

echo.
pause