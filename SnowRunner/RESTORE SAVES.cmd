@echo off

call "..\exe\env.cmd" SnowRunner

if exist "_backup\last\" (
    if exist "%SAVE_DIR%\" (
        rmdir /s /q "%SAVE_DIR%" 2> NUL
        xcopy _backup\last "%SAVE_DIR%" /e /q /r /y /v /i
    ) else (
        echo Save directory not found!
    )
) else (
    echo Backup directory not found!
)

echo.
pause