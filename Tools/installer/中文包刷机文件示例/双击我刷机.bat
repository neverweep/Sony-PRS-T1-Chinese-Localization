@echo off
title * SONY PRS T1 ���� ROM ��ˢ������ *
echo SONY PRS T1 ���� ROM ��ˢ������ / xiaoxia.de / 12-3-4 / 0.5
echo.
echo �ض�
echo   1��*��*��*��*Ҫ*����ȷ�������汾Ϊ 1.0.04.12210��
echo      - �������� SD Rescue ��Ȼ�汾����ʾ��������������ˢһ�� 1.0.04 �� Restore.
echo   2��ˢ���� Root �� ��װ���ĳ��򲻻���ʧ������ȷ�����㹻�Ŀռ䱣֤ˢ��˳����
echo   3��ˢ��ʱ���Զ�ɾ��һЩ���ó�����Щ�����ɾ������Ի���ʹ�����κ�Ӱ�졣
echo   4����ˢ��������ʽ����������֧��(ReaderMod by Morkl)��
echo   5������ epub �����������ʽ(by uvhchina)��UTF-8 TXT ֧��(by xuyn2003)��
echo   6�����Ļ�����Ȼ�������� Root����Ӱ�캺����
echo   7���Ѿ�ˢ�����İ���Ҳ�����ڴ˻�����ֱ��ˢ�˰汾��
echo   8��Ŀǰ��֪�Ķ�ʱ�޷������ʵ䣬���ܲ鿴��������(��Ҫʱ����ʱ�л���Ӣ�Ľ���)��
echo   9���������ˢ����Ŀ¼�µ� �����˵������
echo   10���� ROM �Ͻ���ҵ��Ϊ��
echo   11��ˢ���з��գ���ˢ�������
echo.
echo 0.5 ���£�
echo   1��UTF-8 TXT ����֧�ֺͰ�ȫ��ϵͳ���������������(by xuyn2003)
echo   2������ Settings.apk �ĺ�����root������Ҳ���������~
echo. 
echo.
echo   �뽫�Ķ������ӵ����ԣ��������ݴ���ģʽ(Data Transfer Mode)
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

echo δ�ҵ� [%_READERNAME%] ����ȷ���������Ķ������������ݴ���ģʽ��
echo.
.\ebook_msc.exe listdrv
echo.
set /p DRIVE="���ֶ������Ķ�������������̷�(����Ĭ��Ϊ READER)�� "
echo.
if errorlevel 1 goto :failure

:done_looking

set "DRIVE=%DRIVE:~0,1%"
vol %DRIVE%:
if errorlevel 1 goto :failure

rem ���帴�Ʋ˵�

cls
echo ��װ EPUB ����������Ķ�����ˢ֧���ļ�(ReaderMod by Morkl)��
echo.
echo     ���Ķ������������Ŀ¼�£�CSS �ļ����ṩ epub �ļ�����ʽ֧�֣�fonts �ļ��д���������壬reader �ļ����ڵ� reader.xml ������������λ�ú;�ˢ������
echo.
echo.
echo   1. ��װ��������֧��(by uvhchina)��Լ 100MB��ÿ 5 �η�ҳȫˢһ��
echo      - ������ԭ epub �����ߵ����壬��δ�غ�����ζ��
echo      - ��ţ�� oicqgod ���������飬���ø��ļ���֧�־������ epub��
echo      - ��ţ���� epub ��ֱ�ӿ����ģ������Ű档���ܸ����壬�ɸĴ�С��
echo      - cnepub Ӧ��Ҳ����ֱ�ӿ����ġ����ܸ����壬�ɸĴ�С��
echo      - easyepub ת����Ӧ��Ҳ����ֱ�ӿ����ġ����ܸ����壬�ɸĴ�С��
echo      - δָ������ epub���Ķ�ʱѡ�� Malabar �� HelveticaNeue��
echo.
echo   2. ��װ��С����֧��(ֻ��һ��������ʾ)��Լ 3MB��ÿ 5 �η�ҳȫˢһ��
echo      - �ʺ϶���ʽҪ�󲻸߻�ֻϲ��ĳһ�ض���������ѡ�
echo      - �������滻 \fonts\_EPUB.ttf(ע���Сд�� _ )Ϊ�������壻
echo      - �Ķ����� epub ʱѡ�����һ�����塣
echo.
echo   3. ���Ѿ��Զ��������;�ˢ�����������˲���
echo      - ���֮ǰ�Ѿ��������������ģ���ϣ�����������ˢ�����ã���ѡ����
echo      - �Ժ��Կ���ִ��ˢ������װ���壬����һ��ʱǿ���˳����ɡ�
echo.
echo.
choice /c YN /d Y /t 2 >nul 2>nul
set /p ISCOPY="ѡ��<1��2��3> "
if /I "%ISCOPY%" EQU "1" goto :copy1
if /I "%ISCOPY%" EQU "2" goto :copy2
goto :copyend

:copy1
echo ���ڰ�װ EPUB ����������Ķ�����ˢ֧���ļ�...
xcopy /e /c /s /r /y .\res\*.* %DRIVE%:\ >nul 2>nul
if errorlevel 1 goto :failure
echo ��װ���
echo.
pause
goto :copyend

:copy2
echo ���ڰ�װ EPUB ����������Ķ�����ˢ֧���ļ�...
xcopy /e /c /s /r /y .\res-mini\*.* %DRIVE%:\ >nul 2>nul
if errorlevel 1 goto :failure
echo ��װ���
echo.
pause
goto :copyend

:copyend

rem ���帴�Ʋ˵�����
rem TXT���帴�Ʋ˵�

cls
echo TXT ��������(by xuyn2003)��
echo.
echo     - TXT ���彫��װ���������� \fonts\_TXT.ttf��Ĭ��Ϊ DroidSansFallback��
echo     - ���滻�������� _TXT.ttf(ע���Сд�� _ )���ŵ��������� \fonts\ �ڡ�
echo     - ���� TXT ���뱣��Ϊ UTF-8 ��ʽ��
echo     - ע�⣺���滻���� Really No.2 �������ʾ��
echo.
echo.
echo ϵͳ�������������滻(by xuyn2003)��
echo.
echo.    - Ĭ�ϲ��滻��ȡ���滻ֱ��ɾ�� _SYSTEM.ttf��
echo.    - ���滻�������� _SYSTEM.ttf(ע���Сд�� _ )���ŵ��������� \fonts\ �ڡ�
echo.    - ���ȷ�������ļ��������á�
echo.    - δ�滻 DroidSans-Bold����������������ʾЧ�����ѡ�
echo.    - ע�⣺���滻���� DroidSansFallback DroidSans �������ʾ��
echo.
echo.
if exist %DRIVE%:\fonts\_TXT.ttf goto :txtend
echo ���ڰ�װ TXT ��������...
echo f | xcopy /e /c /s /r /y .\res-mini\fonts\_EPUB.ttf %DRIVE%:\fonts\_TXT.ttf >nul 2>nul
if errorlevel 1 goto :failure
echo ��װ���
echo.
:txtend
pause

rem TXT���帴�Ʋ˵�����

cls
set /p "ANSWER=��Ҫ��ʼˢ����ˢ�������в�Ҫ�Ͽ����ӡ� <Y/N> "

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

echo ˢ������ɣ��Ķ������Զ��رգ����������Σ���Ҫ 1 �������ң���
echo.
echo.
echo ��������޷�������
echo     1�����԰���RESET������ǿ�ƹػ����ٿ�����
echo     2��������ͣ���ڡ�Opening Book�����ͷ��ͣתȦ���뿴�����˵���� - ��ש�ָ�
echo.
pause
popd 
goto :eof

:failure
echo.
echo �ű�δ���
echo.
pause
popd 

