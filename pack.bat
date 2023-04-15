@echo off
set _7zFast="C:\Program Files\7-Zip-Zstandard\7z.exe"
set _7z="C:\Program Files\7-Zip\7z.exe"

if exist %_7zFast% (
	set sevenzip=%_7zFast%
) else if exist %_7z% (
	set sevenzip=%_7z%
) else (
	echo 7-Zip ^(x64^) does not exist!
	echo Path: %_7z%
	echo Please download it from here: https://www.7-zip.org/
	pause
	goto :EOF
)

set name=Collapse
set version=1.69.7

set channel=stable
:: set channel=preview

set squirrelPath=squirrel
set buildPath=%squirrelPath%\buildKitchen
set latestPath=%squirrelPath%\latestKitchen
set releasePath=%squirrelPath%\specs\%channel%
set app="%userprofile%\.nuget\packages\clowd.squirrel\2.9.42\tools\squirrel.exe"
set brotli=brotli.exe

if not exist %app% (
	echo Squirrel NuGet Tool does not exist!
	echo Path: %app%
	echo Please restore all the NuGet package from Visual Studio Solution first!
	pause
	goto :EOF
)

:: Remove old folders and old fileindex.json
if exist "%channel%\fileindex.json" del %channel%\fileindex.json
if exist "%channel%\ApplyUpdate.exe" del %channel%\ApplyUpdate.exe
if exist "%channel%\release" del %channel%\release
if exist "%latestPath%" rmdir /S /Q %latestPath%
if exist "%buildPath%" rmdir /S /Q %buildPath%
mkdir "%buildPath%"
if not exist "%releasePath%" mkdir "%releasePath%"
if not exist "%channel%" mkdir "%channel%"

xcopy %channel%-build\ %buildPath% /S /H /C 
%app% pack --packId="%name%" --packVersion="%version%" --includePDB --packDir="%buildPath%" --releaseDir="%releasePath%"

:: Build latest package file
mkdir %latestPath%
move %buildPath% %latestPath%\app-%version%

:: Copy the update and entry launch executable
copy Update.exe %latestPath%
copy CollapseLauncher.exe %latestPath%

:: Start archiving the latest package
cd %latestPath%
%sevenzip% a -ttar ..\latest.tar .
cd ..\..\
rmdir /S /Q %latestPath%
brotli -q 11 --verbose -o %squirrelPath%\latest %squirrelPath%\latest.tar
del %squirrelPath%\latest.tar
if not exist "%squirrelPath%\%channel%" mkdir %squirrelPath%\%channel%
move %squirrelPath%\latest %squirrelPath%\%channel%

:: Copy the ApplyUpdate tool to channel folder
rmdir /S /Q %channel% && mkdir %channel%
copy ApplyUpdate.exe %channel%

:: Write release stamp file
echo %channel%>%channel%\release

:: Get the size of ApplyUpdate tool
FOR /F "usebackq" %%A IN ('%channel%\ApplyUpdate.exe') DO set applyupdatesize=%%~zA
FOR /F "usebackq" %%A IN ('%channel%\release') DO set releasesize=%%~zA
:: Get the MD5 hash of ApplyUpdate tool
FOR /F %%B IN ('certutil -hashfile %channel%\ApplyUpdate.exe MD5 ^| find /v "hash"') DO set applyupdatehash=%%B
FOR /F %%B IN ('certutil -hashfile %channel%\release MD5 ^| find /v "hash"') DO set releasehash=%%B
:: Get current Unix timestamp
call :GetUnixTime unixtime
:: Print out the fileindex.json file
echo ^{"ver":"%version%.0","time":%unixtime%,"f":^[^{"p":"ApplyUpdate.exe","crc":"%applyupdatehash%","s":%applyupdatesize%^},^{"p":"release","crc":"%releasehash%","s":%releasesize%^}^]^} > %channel%\fileindex.json

goto :EOF


:GetUnixTime
setlocal enableextensions
for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do (
    set %%x)
set /a z=(14-100%Month%%%100)/12, y=10000%Year%%%10000-z
set /a ut=y*365+y/4-y/100+y/400+(153*(100%Month%%%100+12*z-3)+2)/5+Day-719469
set /a ut=ut*86400+100%Hour%%%100*3600+100%Minute%%%100*60+100%Second%%%100
endlocal & set "%1=%ut%" & goto :EOF