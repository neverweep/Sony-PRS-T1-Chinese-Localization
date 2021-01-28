@echo off
title * SONY PRS T1 中文 ROM 包刷机程序 *
echo SONY PRS T1 中文 ROM 包刷机程序 / xiaoxia.de / 12-3-4 / 0.5
echo.
echo 必读
echo   1、*非*常*重*要*：请确定机器版本为 1.0.04.12210。
echo      - 机器经过 SD Rescue 虽然版本号显示正常，但必须再刷一遍 1.0.04 的 Restore.
echo   2、刷机后 Root 和 安装过的程序不会消失，但请确定有足够的空间保证刷机顺利。
echo   3、刷机时会自动删除一些无用程序，这些程序的删除不会对机器使用有任何影响。
echo   4、局刷、外置样式和外置字体支持(ReaderMod by Morkl)。
echo   5、集成 epub 中文字体和样式(by uvhchina)、UTF-8 TXT 支持(by xuyn2003)。
echo   6、中文化后仍然可以自由 Root，不影响汉化。
echo   7、已经刷过中文包，也可以在此基础上直接刷此版本。
echo   8、目前已知阅读时无法弹出词典，但能查看简略释义(需要时可临时切换回英文界面)。
echo   9、建议浏览刷机包目录下的 “相关说明”。
echo   10、本 ROM 严禁商业行为。
echo   11、刷机有风险，开刷需谨慎。
echo.
echo 0.5 更新：
echo   1、UTF-8 TXT 中文支持和安全的系统界面字体更换功能(by xuyn2003)
echo   2、加入 Settings.apk 的汉化，root后设置也变成中文了~
echo. 
echo.
echo   请将阅读器连接到电脑，并打开数据传输模式(Data Transfer Mode)
echo.
choice /c YN /d Y /t 5 >nul 2>nul
pause
cls
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

echo 未找到 [%_READERNAME%] ，请确定已连接阅读器，并打开数据传输模式。
echo.
.\ebook_msc.exe listdrv
echo.
set /p DRIVE="请手动输入阅读器内置闪存的盘符(其卷标默认为 READER)： "
echo.
if errorlevel 1 goto :failure

:done_looking

set "DRIVE=%DRIVE:~0,1%"
vol %DRIVE%:
if errorlevel 1 goto :failure

rem 字体复制菜单

cls
echo 安装 EPUB 中文字体和阅读器局刷支持文件(ReaderMod by Morkl)：
echo.
echo     在阅读器内置闪存根目录下，CSS 文件夹提供 epub 文件的样式支持，fonts 文件夹存放中文字体，reader 文件夹内的 reader.xml 定义了字体存放位置和局刷次数。
echo.
echo.
echo   1. 安装完整中文支持(by uvhchina)，约 100MB；每 5 次翻页全刷一次
echo      - 尽量还原 epub 制作者的字体，但未必和您口味。
echo      - 老牛和 oicqgod 的字体两组，不用改文件，支持绝大多数 epub；
echo      - 老牛精排 epub ，直接看中文，完美排版。不能改字体，可改大小；
echo      - cnepub 应该也可以直接看中文。不能改字体，可改大小；
echo      - easyepub 转换的应该也可以直接看中文。不能改字体，可改大小；
echo      - 未指定字体 epub，阅读时选择 Malabar 或 HelveticaNeue。
echo.
echo   2. 安装最小中文支持(只用一种字体显示)，约 3MB；每 5 次翻页全刷一次
echo      - 适合对样式要求不高或只喜欢某一特定字体的朋友。
echo      - 可自行替换 \fonts\_EPUB.ttf(注意大小写与 _ )为其他字体；
echo      - 阅读中文 epub 时选择最后一个字体。
echo.
echo   3. 我已经自定义过字体和局刷次数，跳过此步骤
echo      - 如果之前已经可以正常看中文，不希望覆盖字体局刷等设置，请选本项
echo      - 以后仍可再执行刷机程序安装字体，到下一步时强制退出即可。
echo.
echo.
choice /c YN /d Y /t 2 >nul 2>nul
set /p ISCOPY="选择？<1、2、3> "
if /I "%ISCOPY%" EQU "1" goto :copy1
if /I "%ISCOPY%" EQU "2" goto :copy2
goto :copyend

:copy1
echo 正在安装 EPUB 中文字体和阅读器局刷支持文件...
xcopy /e /c /s /r /y .\res\*.* %DRIVE%:\ >nul 2>nul
if errorlevel 1 goto :failure
echo 安装完成
echo.
pause
goto :copyend

:copy2
echo 正在安装 EPUB 中文字体和阅读器局刷支持文件...
xcopy /e /c /s /r /y .\res-mini\*.* %DRIVE%:\ >nul 2>nul
if errorlevel 1 goto :failure
echo 安装完成
echo.
pause
goto :copyend

:copyend

rem 字体复制菜单结束
rem TXT字体复制菜单

cls
echo TXT 中文字体(by xuyn2003)：
echo.
echo     - TXT 字体将安装到内置闪存 \fonts\_TXT.ttf，默认为 DroidSansFallback。
echo     - 将替换字体命名 _TXT.ttf(注意大小写与 _ )，放到内置闪存 \fonts\ 内。
echo     - 中文 TXT 必须保存为 UTF-8 格式。
echo     - 注意：将替换内置 Really No.2 字体的显示。
echo.
echo.
echo 系统界面中文字体替换(by xuyn2003)：
echo.
echo.    - 默认不替换，取消替换直接删除 _SYSTEM.ttf。
echo.    - 将替换字体命名 _SYSTEM.ttf(注意大小写与 _ )，放到内置闪存 \fonts\ 内。
echo.    - 务必确认字体文件正常可用。
echo.    - 未替换 DroidSans-Bold，部分中文字体显示效果不佳。
echo.    - 注意：将替换内置 DroidSansFallback DroidSans 字体的显示。
echo.
echo.
if exist %DRIVE%:\fonts\_TXT.ttf goto :txtend
echo 正在安装 TXT 中文字体...
echo f | xcopy /e /c /s /r /y .\res-mini\fonts\_EPUB.ttf %DRIVE%:\fonts\_TXT.ttf >nul 2>nul
if errorlevel 1 goto :failure
echo 安装完成
echo.
:txtend
pause

rem TXT字体复制菜单结束

cls
set /p "ANSWER=您要开始刷机吗？刷机过程中不要断开连接。 <Y/N> "

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

echo 刷机已完成，阅读器会自动关闭，并重启两次（需要 1 分钟左右）。
echo.
echo.
echo 如果机器无法启动：
echo     1、尝试按“RESET”两秒强制关机，再开机。
echo     2、开机仍停留在“Opening Book”或箭头不停转圈，请看“相关说明” - 变砖恢复
echo.
pause
popd 
goto :eof

:failure
echo.
echo 脚本未完成
echo.
pause
popd 

