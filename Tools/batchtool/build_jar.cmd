@echo off

IF .%1. == .. GOTO FIN

ECHO +
ECHO Building %1 ...
ECHO +

SET VER=1.0.04.12210

SET ROOT=%~dp0
FOR %%? in ("%~dp0..") DO SET ROOTPARENT=%%~f?
SET PACKAGE=%ROOT%?%1
SET PACKAGE=%PACKAGE:?=%

FOR %%? in (%TOOLS%) DO SET GNU=%%~d?\gnuwin32\bin

SET APKT_ROOT=%ROOTPARENT%\apktool
SET JDK="C:\Program Files\Java\jre7\bin"
SET ADK="C:\Program Files\Android\android-sdk"

7z.exe d %PACKAGE%\%1.jar classes.dex

IF NOT EXIST %PACKAGE%\%1.odex GOTO SMALI
DEL %PACKAGE%\classes.dex >NUL 2>&1

ECHO Copying ODEX signature from %ROOTPARENT%/dump_%VER%/system/framework/%1.odex
copy %PACKAGE%\%1.odex %1.odex >NUL
%GNU%\dd if=%ROOTPARENT%/dump_%VER%/system/framework/%1.odex of=%1.odex bs=1 count=20 skip=52 seek=52 conv=notrunc

goto MAKERES

:SMALI

ECHO Smiling %PACKAGE%\smali into %PACKAGE%\classes.dex
%JDK%\java -Xmx1024m -jar %ROOTPARENT%\smali\smali.jar -a 8 -o %PACKAGE%\c.dex %PACKAGE%\smali
move %PACKAGE%\c.dex %PACKAGE%\classes.dex >NUL

7z.exe a %PACKAGE%\%1.jar %PACKAGE%\classes.dex

:MAKERES

ECHO Aligning %PACKAGE%\%1.jar into %PACKAGE%.jar
%ADK%\tools\zipalign.exe -f 4 %PACKAGE%\%1.jar %PACKAGE%.jar

:FIN

endlocal