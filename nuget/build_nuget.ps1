echo "Creating directory structure for nuget"

New-Item -Path nuget\build\native -ItemType Directory -Force

echo "Copying over files..."

Copy-Item -Force ..\bin\WS\10.0\x86\bin\Release\*.winmd nuget\build\native
Copy-Item -Force ..\bin\WS\10.0\x86\bin\Release\*.dll nuget\build\native
Copy-Item -Force opencv-hololens.targets nuget\build\native

Copy-Item -Force opencv-hololens.nuspec nuget\
Copy-Item -Force nuget_readme.txt nuget\
Copy-Item -Force nuget.exe nuget\

Push-Location
cd nuget
.\nuget pack .\opencv-hololens.nuspec
Copy-Item -Force *.nupkg ..\
Pop-Location

Remove-Item -Recurse -Force nuget

