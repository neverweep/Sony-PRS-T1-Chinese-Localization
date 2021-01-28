@echo off

IF .%1. == .. GOTO FIN
IF .%2. == .. GOTO FIN

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


:MAKERES

ECHO **** 将文件 %1.apk 推入 %2
%ADK%\platform-tools\adb push %PACKAGE%\%1.apk %2

GOTO FIN

:NOTEXIST

ECHO %1或%2不存在。

:FIN

endlocal