REM copy ..\bin\WS\10.0\x86\bin\Release\*.xml ..\bin\WS\10.0\x86\bin\Release\*.winmd.xml
nuget pack opencv-hololens.win10.nuspec -properties Configuration=Release
REM del ..\bin\WS\10.0\x86\bin\Release\*.winmd.xml
pause


REM @ECHO OFF
REM PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'"
REM PAUSE

REM rmdir /S /Q test
REM del *.nupkg
REM del *.zip
REM .\nuget pack .\opencv-hololens.nuspec -properties Configuration=Release
REM copy OpenCV-Hololens.0.0.0.1.nupkg test.zip

