@echo off
set name=Collapse
set version=1.69.7
:: set channel=stable
:: set channel=stableportable
set channel=preview
:: set channel=previewportable
set buildPath=squirrel\buildKitchen
set releasePath=squirrel\specs\%channel%
set app=%userprofile%\.nuget\packages\clowd.squirrel\2.9.42\tools\squirrel.exe

rmdir /S /Q %buildPath%
mkdir "%buildPath%"
if not exist "%releasePath%" mkdir "%releasePath%"

xcopy %channel%\ %buildPath% /S /H /C 
%app% pack --packId="%name%" --packVersion="%version%" --includePDB --packDir="%buildPath%" --releaseDir="%releasePath%"

rmdir /S /Q %buildPath%