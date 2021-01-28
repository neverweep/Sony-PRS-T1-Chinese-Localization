@echo off

IF .%1. == .. GOTO FIN

ECHO ++++++++
ECHO 正在处理 %1 ...
ECHO ++++++++

SET ROOT=%~dp0
FOR %%? in ("%~dp0..") DO SET ROOTPARENT=%%~f?

CD %ROOT%
CD /d %~dp0 

ECHO **** 将 %1 反编译为 %1.dex2jar.jar
dex2jar.bat %1 >nul 2>nul

:FIN

endlocal