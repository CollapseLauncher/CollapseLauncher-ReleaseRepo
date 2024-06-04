@echo off
set _7zFast="C:\Program Files\7-Zip-Zstandard\7z.exe"
set _7z="C:\Program Files\7-Zip\7z.exe"
set name=Collapse
set channel=1
set version=1.80.7
set thread=%NUMBER_OF_PROCESSORS%
set forceUpdate="forceUpdate":false,

:checkRepoLocation
if not exist "..\%name%" (
	cls
	echo Collapse Repository does not exist!
	echo Path: "..\%name%"
	echo Please clone the repo first as "%name%"
	pause | echo Press any key to retry...
	goto :checkRepoLocation
)

:sevenZipCheck
if exist %_7zFast% (
	set sevenzip=%_7zFast%
) else if exist %_7z% (
	set sevenzip=%_7z%
) else (
	cls
	echo 7-Zip ^(x64^) does not exist!
	echo Path: %_7z%
	echo Please download it from here: https://www.7-zip.org/
	pause | echo Press any key to retry...
	goto :sevenZipCheck
)

:buildChoice
echo Please define what build you want to pack.
set /p channel=Preview^(1^)/Stable^(2^) ^[default: 1^]^> 
if %channel% == 1 (
	echo Packing preview build
	set channel=preview
  set markChannel=-preview
) else if %channel% == 2 (
	echo Packing stable build
	set channel=stable
  set markChannel=
) else (
    cls
	echo Input is not valid! Available choice: 1 or 2
	goto :buildChoice
)

:versionDefine
echo.
echo Please define the version.
set /p versionPrompt=^[default: %version%^]^> 
if not "%versionPrompt%" == "" (
	echo Set to defined version: %versionPrompt%
	set version=%versionPrompt%
)

:isForceUpdatePrompt
echo.
echo Use Force Update?
set /p forceUpdatePrompt=^[default: N^]^> 
if /I "%forceUpdatePrompt%" == "Y" (
    set forceUpdate="forceUpdate":true,
)
echo Force Update Parameter: %forceUpdate%

:setBuildPath
echo Input the extracted folder path of the signed artifact
echo Example F:\GitHub\CollapseLauncher-ReleaseRepo\SignArtifact-Preview
set /p pathPrompt=
set BuildArtifactDir="%pathPrompt%\BuildArtifact-%version%\"
set BuildArtifactExe="%BuildArtifactDir%CollapseLauncher.exe"
if not exist %BuildArtifactExe% (
echo CollapseLauncher.exe is not found on %BuildArtifactDir% !
echo Please provide the valid extracted package Path
goto :setBuildPath
)

set squirrelPath=squirrel
set buildPath=%squirrelPath%\buildKitchen-%channel%
set latestPath=%squirrelPath%\latestKitchen-%channel%
set releasePath=%squirrelPath%\specs\%channel%
set appSquirrel="%userprofile%\.nuget\packages\clowd.squirrel\2.11.1\tools\squirrel.exe"
set appSquirrelEnv="%NUGET_PACKAGES%\clowd.squirrel\2.11.1\tools\squirrel.exe"
:: set brotli=brotli-mt-w64.exe -T %thread% -k -11 -f -B -v
set brotli=ApplyUpdate.exe compress

:squirrelCheck
if exist %appSquirrelEnv% (
	set appSquirrel=%appSquirrelEnv%
	set appSquirrelUpdate="%NUGET_PACKAGES%\clowd.squirrel\2.11.1\tools\Update.exe"
	echo Squirrel tool found in %appSquirrelEnv%
	goto :buildPreparation
)
if not exist %appSquirrel% (
	echo Squirrel NuGet Tool does not exist!
	echo Path: %appSquirrel%
	echo Please restore all the NuGet package from Visual Studio Solution first!
	pause | echo Press any key to retry...
	goto :squirrelCheck
)
echo Squirrel tool found in %appSquirrel%
set appSquirrelUpdate="%userprofile%\.nuget\packages\clowd.squirrel\2.11.1\tools\Update.exe"
goto :buildPreparation

:buildPreparation
:: Remove old folders and old fileindex.json
if exist "%channel%\fileindex.json" del %channel%\fileindex.json
if exist "%channel%\ApplyUpdate.exe" del %channel%\ApplyUpdate.exe
if exist "%channel%\release" del %channel%\release
if exist "%latestPath%" rmdir /S /Q %latestPath%
if exist "%buildPath%" rmdir /S /Q %buildPath%
mkdir "%buildPath%"
if not exist "%releasePath%" mkdir "%releasePath%"
if not exist "%channel%" mkdir "%channel%"

title=Copying build files...
xcopy %BuildArtifactDir% %buildPath% /S /H /C 
title=Making Squirrel package...
%appSquirrel% http-down --url=https://r2.bagelnl.my.id/cl-cdn/squirrel/%channel%/ -r "%releasePath%"
%appSquirrel% pack --packId="%name%" --packVersion="%version%" --includePDB --packDir="%buildPath%" --releaseDir="%releasePath%"

:: Build latest package file
mkdir %latestPath%
move %buildPath% %latestPath%\app-%version%

copy %appSquirrelUpdate% %latestPath%
copy "%pathPrompt%\Squirrel-Stub\CollapseLauncher.exe" %latestPath%

:: Start archiving the latest package
title=Archiving tar build files...
cd %latestPath%
%sevenzip% a -ttar "..\latest-%channel%.tar" .
title=Archiving 7z build files...
if exist "%pathPrompt%\InnoInstaller\CL-%version%%markChannel%_Portable.7z" del "%pathPrompt%\InnoInstaller\CL-%version%%markChannel%_Portable.7z"
%sevenzip% a -t7z -m0=lzma2 -mx=9 -aoa -mmt=%thread% -mfb=273 -md=128m -ms=on "%pathPrompt%\InnoInstaller\CL-%version%%markChannel%_Portable.7z" .

cd ..\..\
rmdir /S /Q %latestPath%
if not exist "%squirrelPath%\%channel%" mkdir %squirrelPath%\%channel%
title=Packing build into brotli archive...
echo Packing build into brotli archive...
%brotli% %squirrelPath%\latest-%channel%.tar %squirrelPath%\%channel%\latest
del %squirrelPath%\latest-%channel%.tar

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
echo ^{"ver":"%version%",%forceUpdate%"time":%unixtime%,"f":^[^{"p":"ApplyUpdate.exe","crc":"%applyupdatehash%","s":%applyupdatesize%^},^{"p":"release","crc":"%releasehash%","s":%releasesize%^}^]^}>%channel%\fileindex.json

goto :EOF

:GetUnixTime
setlocal enableextensions
for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do (
    set %%x)
set /a z=(14-100%Month%%%100)/12, y=10000%Year%%%10000-z
set /a ut=y*365+y/4-y/100+y/400+(153*(100%Month%%%100+12*z-3)+2)/5+Day-719469
set /a ut=ut*86400+100%Hour%%%100*3600+100%Minute%%%100*60+100%Second%%%100
endlocal & set "%1=%ut%" & goto :EOF