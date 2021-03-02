@echo off
set /p a="Players? (1-8 is supported)"
set b=-host %a%
set /p a="Deathmatch?(y/n)"
if /i %a%==y set b=%b% -deathmatch -nomonsters
set /p a="Difficulty?(0-4, also affects item placement in deathmatch)"
set b=%b% -skill %a%
set /p a="Which level? (Format is 'Episode Mission', so 3 8 is E3M8)"
set b=%b% -warp %a%
set /p a="Use most recent addons? (y/n)
if /i %a%==y for /f "delims=" %%x in (ModList\recent.txt) do set c=%%x
if /i %a%==y echo %c%
if /i %a%==y goto skipad
set /p a="Addons"
:skipad
if /i %a%==y set a=%c%
set b=%b% %a%
..\Base_Files\gzdoom.exe %b%
