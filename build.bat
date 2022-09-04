@echo off
for /f "delims==; tokens=1,2 eol=;" %%G in (module.prop) do set %%G=%%H
set folders=test
echo %folders%
pause
cls
goto :eof

title Creating Module Zip %version%
if exist "%SYSTEMDRIVE%\Program Files" (
  echo %version%
  "C:\Program Files\7-Zip\7z.exe" %id% %version%
) else (
  echo %version%
  "C:\Program Files (x86)\7-Zip\7z.exe" %id% %version%
)
