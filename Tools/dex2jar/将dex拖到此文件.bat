@echo off

IF .%1. == .. GOTO FIN

ECHO ++++++++
ECHO ���ڴ��� %1 ...
ECHO ++++++++

SET ROOT=%~dp0
FOR %%? in ("%~dp0..") DO SET ROOTPARENT=%%~f?

CD %ROOT%
CD /d %~dp0 

ECHO **** �� %1 ������Ϊ %1.dex2jar.jar
dex2jar.bat %1 >nul 2>nul

:FIN

endlocal