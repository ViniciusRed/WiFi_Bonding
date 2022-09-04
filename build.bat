@echo off
for /f "delims==; tokens=1,2 eol=;" %%G in (module.prop) do set %%G=%%H
title Creating Module Zip %version%
set folders=test
pause
cls
goto :eof

:build
if exist "%SYSTEMDRIVE%\Program Files" (
  echo Creating Module Wifi_Bonding  %version%
  "C:\Program Files\7-Zip\7z.exe" %id% %version%
) else (
  echo Creating Module Wifi_Bonding %version%
  "C:\Program Files (x86)\7-Zip\7z.exe" %id% %version%
)
