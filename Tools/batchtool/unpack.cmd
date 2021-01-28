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

ECHO *** 1. 反编译odex apks\%1.odex 到 %1\smali
%JDK%\java -jar %ROOTPARENT%\smali\baksmali.jar -d %ROOTPARENT%\smali\framework -x %ROOT%apks\%1.odex -o %PACKAGE%\smali

ECHO *** 2. 编译 %1\smali 为 %1\classes.dex
%JDK%\java -Xmx512M -jar %ROOTPARENT%\smali\smali.jar %PACKAGE%\smali -o %PACKAGE%\classes.dex

ECHO *** 3. 将 %1\classes.dex 加入到 %1.apk
COPY %ROOT%apks\%1.apk %ROOT%%1 >nul
REN %PACKAGE%\%1.apk %1.zip
%ROOT%7z a %PACKAGE%\%1.zip %PACKAGE%\classes.dex >nul
REN %PACKAGE%\%1.zip %1.apk

ECHO *** 4. 解包 %1.apk
cd %APKT_ROOT%
%JDK%\java -jar apktool.jar d -f %PACKAGE%\%1.apk %PACKAGE%\apk >nul 2>nul

ECHO *** 5. 清扫
DEL %PACKAGE%\classes.dex >nul 2>nul
RD /s /q %PACKAGE%\smali >nul 2>nul
REN %PACKAGE%\%1.apk %1_Classes.apk >nul 2>nul

CD %ROOT%

GOTO FIN

:NOTEXIST

ECHO %1不存在。

:FIN

endlocal