@echo off
for /f "delims==; tokens=1,2 eol=;" %%G in (module.prop) do set %%G=%%H
title Creating Module Zip %version%
set files=META-INF customize.sh module.prop
jq '.list |= map(select(.version != "%version%"))' .github/update.json
jq '.list |= map(select(.versionCode != "%versionCode%"))' .github/update.json
echo Creating Module Wifi_Bonding %version%
7z a -mmt2 -mx9 %id%-%version%.zip %files%