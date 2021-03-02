@echo off
set /p s="Use most recent IP? (y/n)"
if /i %s%==y for /f "delims=" %%x in (IPList\recent.txt) do set b=%%x
if /i %s%==y goto skipip
set /p ip="Friendly Name?"
for /f "delims=" %%x in (IPList\%ip%.txt) do set b=%%x
:skipip
echo %b%
set /p s="Use most recent addons? (y/n)"
if /i %s%==y for /f "delims=" %%x in (ModList\recent.txt) do set a=%%x
if /i %s%==y goto skipad
set /p a="Addons"
:skipad
echo %a%
echo %b%>IPList\recent.txt
echo %a%>ModList\recent.txt
gzdoom.lnk -join %b% %a%
