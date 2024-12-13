@echo off

call "..\exe\env.cmd" SnowRunner

if exist "%SAVE_DIR%\" (
    rmdir /s /q _backup\prev 2> NUL
    rename _backup\last prev 2> NUL
    xcopy "%SAVE_DIR%" _backup\last /e /q /r /y /v /i
) else (
    echo Save directory not found!
)

echo.
pause