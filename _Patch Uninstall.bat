color 04
@echo off
rd /s /q .\BepInEx
rd /s /q .\dotnet
del /s /q .doorstop_version
del /s /q doorstop_config.ini
del /s /q README.me
del /s /q winhttp.dll

echo Patch disinstallata. Puoi reinstallarla quando vuoi tramite il file Launcher.bat!
pause

