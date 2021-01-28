@ECHO OFF

IF .%1. == .. GOTO FIN

ECHO ++++++++
ECHO 正在处理 %1 ...
ECHO ++++++++

SET ROOT=%~dp0
FOR %%? in ("%~dp0..") DO SET ROOTPARENT=%%~f?
SET PACKAGE=%ROOT%?%1
SET PACKAGE=%PACKAGE:?=%

SET APKT_ROOT=%ROOTPARENT%\apktool
SET JDK="C:\Program Files\Java\jre7\bin"
SET ADK="C:\Program Files\Android\android-sdk"

IF NOT EXIST %ROOT%\apks\%1.apk GOTO NOTEXIST

IF NOT EXIST %PACKAGE% GOTO UNPACK

:UNPACK

ECHO *** 1. 解包 %1.apk
md %ROOT%%1
COPY %ROOT%apks\%1.apk %PACKAGE% >nul
cd %APKT_ROOT%
%JDK%\java -jar apktool.jar d -f %PACKAGE%\%1.apk %PACKAGE%\apk >nul 2>nul

CD %ROOT%

GOTO FIN

:NOTEXIST

ECHO %1不存在。

:FIN

endlocal