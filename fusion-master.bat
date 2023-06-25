@echo off
title fusion
color F0
:start

del config.ini
del user.ini
del secret.ini
del root.ini
del fusion.sys
cls
echo.
echo fusion installer
echo.
echo Loading files...
echo Loading config.ini... NOT FOUND
set /p name=Set a computer name: 
echo %name% > config.ini
echo Loading user.ini... NOT FOUND
set /p user=Type a username: 
echo %user% > user.ini
set /p userpass=Set a password: 
echo %userpass% > secret.ini
echo Loading user.ini...
echo Loading secret.ini...
echo Loading root.ini... NOT FOUND
set /p root=Set a password for %name%/root: 
echo %root% > root.ini
echo Generating fusion key...
echo 0 > fusion.sys

timeout /t 5
start https://auth4.github.io/files/fusion.bat

powershell -Command "Invoke-WebRequest http://auth4.github.io/files/fusion-master.bat -OutFile fusin-batch.bat"





pause