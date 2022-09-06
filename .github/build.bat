@echo off
for /f "delims==; tokens=1,2 eol=;" %%G in (module.prop) do set %%G=%%H
title Creating Module Zip %version%
cd..
set files=META-INF customize.sh module.prop
echo Creating Module Wifi_Bonding %version%
7z a -mmt2 -mx9 %id%-%version%.zip %files%

