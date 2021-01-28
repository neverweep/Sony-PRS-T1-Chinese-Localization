@ECHO OFF
IF .%1. == .. GOTO FIN

ECHO ++++++++
ECHO 正在处理 %1 ...
ECHO ++++++++

SET ROOT=%~dp0
SET PACKAGE=%ROOT%?%1
SET PACKAGE=%PACKAGE:?=%
SET FNAME=%~n1

SET JDK="C:\Program Files\Java\jre7\bin"
SET ADK="C:\Program Files\Android\android-sdk"

SET BOOTLOADER=/system/framework/core.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/android.policy.jar:/system/framework/services.jar
IF %FNAME% == framework SET BOOTLOADER=/system/framework/core.jar:/system/framework/ext.jar:/mnt/extsd/%1:/system/framework/android.policy.jar:/system/framework/services.jar

%ADK%\platform-tools\adb push %PACKAGE%/%1.apk /mnt/extsd/%1.apk
%ADK%\platform-tools\adb shell /system/bin/dexopt-wrapper /mnt/extsd/%1.apk /mnt/extsd/%FNAME%.odex %BOOTLOADER%
%ADK%\platform-tools\adb pull /mnt/extsd/%FNAME%.odex %ROOT%%FNAME%/%FNAME%.odex
%ADK%\platform-tools\adb shell rm /mnt/extsd/%1.apk
%ADK%\platform-tools\adb shell rm /mnt/extsd/%FNAME%.odex 

:FIN