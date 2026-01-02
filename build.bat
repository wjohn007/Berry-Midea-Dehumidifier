:: --------------------------------------
:: Batch to deploy project to global repo
:: powershell :  cmd.exe /c build.bat

::@echo off
set curdir=%cd%


:: basic settings
set appName=AppDehum
set copyRoot=..\..\Coding\%appName%
set root=.

set host=tasmota-ke1-klappe-5312

:: copy from master repo
if exist "%copyRoot%" (
copy /y %copyRoot%\readme.md .
copy /y %copyRoot%\dehum.tapp .
)





