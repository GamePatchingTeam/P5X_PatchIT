color 04
@echo off
setlocal enabledelayedexpansion
where git >nul 2>nul
if errorlevel 1 (
    echo Git non trovato! Sto avviando il download e l'installazione...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.50.0.windows.2/Git-2.50.0.2-64-bit.exe' -OutFile 'git-installer.exe'"
    start /wait git-installer.exe /VERYSILENT /NORESTART
    del git-installer.exe
)
cls
git clone https://github.com/GamePatchingTeam/P5X_PatchIT.git
robocopy .\P5X_PatchIT . /E /MOVE
rd /s /q .git
cls
set "baseDir=.\BepInEx\Translation\it\Text"
set "userFile=usernamefix.txt"
if not exist "%userFile%" (
    echo Il file %userFile% non esiste.
    echo Inserisci il nome del personaggio, facendo attenzione a spazi, caratteri speciali e maiuscole.

    echo.
    set /p "fullName=> "
    
    :: Capitalizza automaticamente il nome (solo prima lettera maiuscola)
    powershell -Command "Write-Host ((Get-Culture).TextInfo.ToTitleCase('!fullName!'.ToLower()))" > temp_name.txt
    set /p fullName=<temp_name.txt
    del temp_name.txt
    
    echo !fullName! > "%userFile%"
    echo File "%userFile%" creato con: !fullName!
    echo.
) else (
    echo File "%userFile%" trovato, caricamento dati...
    echo.
)
set /p fullName=<"%userFile%"

:: Dividi nome e cognome
for /f "tokens=1,2*" %%a in ("!fullName!") do (
    set "firstName=%%a"
    set "lastName=%%b"
)

:: Debug: mostra cosa contiene le variabili
::echo Debug: firstName = [!firstName!]
::echo Debug: lastName = [!lastName!]

:: Controllo con nome e cognome separati
if /i "!firstName!"=="Nagisa" (
    if /i "!lastName!"=="Kamisiro" goto :skipProcessing
    if /i "!lastName!"=="Kamishiro" goto :skipProcessing
)
echo Usando Nome: "!firstName!" - Cognome: "!lastName!"
echo.
for /r "%baseDir%" %%f in (*.txt) do (
    echo Elaborando: %%~nxf
    powershell -Command "(Get-Content '%%f' -Raw) -replace 'Nagisa', '!firstName!' -replace 'Kamisiro', '!lastName!' -replace 'Kamishiro', '!lastName!' | Set-Content '%%f' -NoNewline"
)
echo Sostituzione completata in tutti i file .txt
goto :end

:skipProcessing
echo Nome di default rilevato (!fullName!), elaborazione saltata.

:end
pause
start steam://run/3061570