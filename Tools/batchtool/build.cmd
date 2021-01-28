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

IF NOT EXIST %PACKAGE%\apk\AndroidManifest.xml GOTO NOTEXIST

IF NOT EXIST %PACKAGE%\smali\NUL GOTO MAKERES

:MAKERES

ECHO **** 1. 将资源文件 %1\apk 打包为 %1\%1.apk
cd %APKT_ROOT%
%JDK%\java -jar apktool.jar b -f %PACKAGE%\apk %PACKAGE%\%1.apk >nul 2>nul
cd %ROOT%

ECHO **** 2. 使用 %2 密钥对 %1\%1.apk 签名，并命名为 %1\%1_signed.apk
cd %ROOTPARENT%\sign
%JDK%\java -jar signapk.jar %2.x509.pem %2.pk8 %PACKAGE%\%1.apk %PACKAGE%\%1_signed.apk >nul 2>nul
cd %ROOT%

ECHO **** 3. 使用 zipalign 对 %1\%1_signed.apk 优化，并命名为 %1\%1.apk
%ADK%\tools\zipalign.exe -f 4 %PACKAGE%\%1_signed.apk %PACKAGE%\%1.apk

GOTO FIN

:NOTEXIST

ECHO %1不存在。

:FIN

endlocal