@echo off

set GAME=%1

for /f "usebackq delims=" %%i in (`powershell -Command "[Environment]::GetFolderPath('MyDocuments')"`) do set MY_DOCS=%%i

if %GAME%==SnowRunner (set S_FLAG=1) else if %GAME%==Expeditions (set S_FLAG=0)
set S_COND=Where-Object {(Get-ChildItem -Path $_.Directory.FullName -File -Filter 'GameVersionSave.*').Count -eq %S_FLAG%}
for /f "usebackq delims=" %%i in (`powershell -Command "(Get-ChildItem -Path '%MY_DOCS%\My Games\%GAME%\base\storage', '%PUBLIC%\Documents\Steam' -Recurse -Exclude 'backupSlots' -File -Filter 'user_profile.*' | %S_COND% | Sort-Object -Property LastAccessTimeUtc -Descending | Select-Object -First 1).Directory.FullName"`) do set SAVE_DIR=%%i

echo.
echo SnowRunner/Expeditions save backupper v1.0.5 by EquDevel
echo.
echo GAME=%GAME%
echo.
echo SAVE_DIR=%SAVE_DIR%
echo.