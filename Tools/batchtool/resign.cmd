@echo off

IF .%1. == .. GOTO FIN
IF .%2. == .. GOTO FIN

ECHO ++++++++
ECHO ���ڴ��� %1 ...
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

REN %PACKAGE%\%1.apk %1.zip >nul
%ROOT%7z d %PACKAGE%\%1.zip classes.dex >nul
REN %PACKAGE%\%1.zip %1.apk >nul

ECHO **** 2. ʹ�� %2 ��Կ�� %1\%1.apk ǩ����������Ϊ %1\%1_signed.apk
cd %ROOTPARENT%\sign
%JDK%\java -jar signapk.jar %2.x509.pem %2.pk8 %PACKAGE%\%1.apk %PACKAGE%\%1_signed.apk
cd %ROOT%

ECHO **** 3. ʹ�� zipalign �� %1\%1_signed.apk �Ż���������Ϊ %1\%1.apk
%ADK%\tools\zipalign.exe -f 4 %PACKAGE%\%1_signed.apk %PACKAGE%\%1.apk

GOTO FIN

:NOTEXIST

ECHO %1��%2�����ڡ�

:FIN

endlocal