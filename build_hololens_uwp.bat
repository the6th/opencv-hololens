set Basedir=%~dp0
set ContribModulesDir="%Basedir%..\opencv_contrib-hololens\modules"

rmdir /S /Q Junk
rmdir /S /Q CMakeFiles
mkdir bin/WS/10.0/x86

cd %Basedir%\platforms\winrt
cmd /C setup_winrt "WS" "10.0" "x86" "OFF" -g "Visual Studio 14 2015" -c %ContribModulesDir%
cd %Basedir%
