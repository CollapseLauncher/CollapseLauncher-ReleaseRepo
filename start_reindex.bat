@echo off
%~d0
cd "%~dp0"
set ver=1.0.69.2

preview\CollapseLauncher.exe reindex --input preview\ --upver %ver%
previewportable\CollapseLauncher.exe reindex --input previewportable\ --upver %ver%
:: stable\CollapseLauncher.exe reindex --input stable\ --upver %ver%
:: stableportable\CollapseLauncher.exe reindex --input stableportable\ --upver %ver%