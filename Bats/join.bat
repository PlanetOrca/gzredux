@echo off
set /p s="Use most recent IP? (y/n)"
if /i %s%==y for /f "delims=" %%x in (IPList\recent.txt) do set b=%%x
if /i %s%==y goto skip
set /p ip="Friendly Name?"
for /f "delims=" %%x in (IPList\%ip%.txt) do set b=%%x
:skip
echo %b%
set /p a="Addons"
echo %b%>IPList\recent.txt
gzdoom.lnk -join %b% %a%
