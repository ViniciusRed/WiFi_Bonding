@echo off
for /f "delims==; tokens=1,2 eol=;" %%G in (module.prop) do set %%G=%%H
title Creating Module Zip %version%
set files=META-INF customize.sh module.prop
call :build
pause
cls
goto :eof

:build
if exist "%SYSTEMDRIVE%\Program Files (x86)" (
  echo Creating Module Wifi_Bonding %version%
  "C:\Program Files\7-Zip\7z.exe" a -mmt2 -mx9 %id%-%version%.zip %files%
) else (
  echo Creating Module Wifi_Bonding %version%
  "C:\Program Files (x86)\7-Zip\7z.exe" a -mmt2 -mx9 %id%-%version%.zip %files%
)
