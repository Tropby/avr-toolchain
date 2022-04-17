@echo off

REM cleanup
rmdir /q /s toolchain

REM download
set "download=bitsadmin /transfer myDownloadJob /download /priority normal"
%download% "https://github.com/ZakKemble/avr-gcc-build/releases/download/v11.1.0-1/avr-gcc-11.1.0-x64-windows.zip" %cd%\download.zip

REM unzip toolchain
mkdir toolchain
powershell Expand-Archive download.zip -DestinationPath toolchain

REM copy toolchain
xcopy /y /e /k /h /i toolchain\avr-gcc-11.1.0-x64-windows toolchain
rmdir /q /s toolchain\avr-gcc-11.1.0-x64-windows

REM delete download
del /q /f download.zip