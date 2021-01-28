@echo off
echo T1 中文ROM包由evernon制作。
echo.
echo 本包集成了reader_mod，建议进行过其他操作的同学先备份重要数据并restore以后在再继续。
echo.
echo.
echo.
pause
pushd %~d0%~p0

setlocal EnableDelayedExpansion

set "_READERNAME=READER"
set "_READERMODEL=PRS-T1"

for /F "usebackq tokens=1" %%a in (`.\ebook_msc.exe name %_READERMODEL% getdrv`) do (
   if /I "%%a" NEQ "NONE" (
	  set "DRIVE=%%a"
	  goto :done_looking
   )
)

echo Reader [%_READERNAME%] not found
echo.
.\ebook_msc.exe listdrv
echo.
set /p DRIVE="Enter the letter of the Reader drive? "
if errorlevel 1 goto :failure

:done_looking

set "DRIVE=%DRIVE:~0,1%"
vol %DRIVE%:
if errorlevel 1 goto :failure

set /p "ANSWER=Continue? <Y/N> "

if /I "%ANSWER%" NEQ "Y" goto :failure

rem set /p DRIVE=Enter the letter of the Reader drive?
rem if errorlevel 1 goto :failure

rem goto :nocopy-epub

if not exist .\dictdata goto :nocopy-dictdata

if exist %DRIVE%:\dictdata goto :nocopy-dictdata

xcopy .\dictdata %DRIVE%:\dictdata /E /C /R /H /I /K /Y 
if errorlevel 1 goto :failure

:nocopy-dictdata

if exist %DRIVE%:\updates rmdir %DRIVE%:\updates /Q /S

if not exist ./sdcard goto :nocopy-sdcard

xcopy .\sdcard\*.* %DRIVE%:\ /E /C /R /H /I /K /Y 
if errorlevel 1 goto :failure

:nocopy-sdcard

xcopy ".\%_READERMODEL% Updater.package" %DRIVE%:\ /Y
if errorlevel 1 goto :failure

.\ebook_msc.exe name %_READERMODEL% um recovery
if errorlevel 1 goto :failure

pause
popd 
goto :eof

:failure
echo Script did not complete
pause
popd 

