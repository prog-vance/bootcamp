@echo off
title Windows Setup
echo Setting up web server directories...

:: Create the directory structure
mkdir "web_server\webpage" > nul

:: Create the index.html file
echo ^<h1^>Batch run successful!^</h1^> > "web_server\webpage\index.html"

:: Open index.html in the default web browser
start "" "web_server\webpage\index.html"

echo Checking internet connection...
ping google.com

echo Saving your network info...

:: Save the device's network information to network.txt
ipconfig /all > "web_server\network.txt"

echo Done!

:: Append the current date to run_instances.txt
echo %date% %time% >> "run_instances.txt"

:: Hide the command prompt window
echo Set objShell = CreateObject("WScript.Shell") > hide.vbs
echo objShell.Run "web_auto.bat", 0, False >> hide.vbs
cscript //nologo hide.vbs
del hide.vbs