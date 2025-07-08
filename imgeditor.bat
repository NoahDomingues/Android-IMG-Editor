ECHO OFF
CLS

setlocal
title Android IMG Editor

color 1F
echo(
echo ==================== Android IMG Editor - v1.1 ====================
echo ======================== By Noah Domingues ========================
echo(
echo --------------- Based on JordanEJ's IMG Editor Tool ---------------
echo(
echo ---------- Discord Server: https://discord.gg/3zbfaTNN7V ----------
echo(

REM -------------------------------
REM Step 1: Extract bin.zip into the "bin" folder
REM -------------------------------
if exist bin.zip (
    title Android IMG Editor - Extracting...
    echo Extracting files...
    powershell -Command "Expand-Archive -Force 'bin.zip' -DestinationPath 'bin'"
    if %errorlevel% neq 0 (
        title Android IMG Editor - Extraction Failed
        echo ERROR: Failed to extract bin.zip. Join our Discord server for assistance: https://discord.gg/3zbfaTNN7V
        pause
        exit /b %errorlevel%
    )
    attrib +h "bin"
    title Android IMG Editor - Extraction Complete
    echo Extraction complete.
) else (
    title Android IMG Editor - Extraction Failed
    echo ERROR: bin.zip not found. Join our Discord server for assistance: https://discord.gg/3zbfaTNN7V
    pause
    exit /b 1
)

REM -------------------------------
REM Step 2: Delete bin.zip after extraction
REM -------------------------------
del bin.zip /f
title Android IMG Editor
cls


:MENU
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
ECHO 1 - Unpack .img
ECHO 2 - Repack .img
ECHO 3 - Clear unpacked files
ECHO 4 - About
ECHO 5 - EXIT
ECHO.
ECHO 6 - Download GUI version (GitHub)
ECHO.
SET /P M=Option:
IF %M%==1 GOTO UNPACK
IF %M%==2 GOTO REPACK
IF %M%==3 GOTO CLEAR
IF %M%==4 GOTO ABOUT
IF %M%==5 GOTO EOF
IF %M%==6 GOTO GUI

:UNPACK
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
ECHO 1 - Unpack system.img
ECHO 2 - Unpack vendor.img
ECHO 3 - Unpack system.img and vendor.img
ECHO 4 - Back
ECHO.
SET /P M=Option:
IF %M%==1 GOTO UNPACKSYSTEM
IF %M%==2 GOTO UNPACKVENDOR
IF %M%==3 GOTO UNPACKALL
IF %M%==4 GOTO MENU
GOTO MENU

:REPACK
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
ECHO 1 - Repack system.img
ECHO 2 - Repack vendor.img
ECHO 3 - Repack system.img and vendor.img
ECHO 4 - Back
ECHO.
SET /P M=Option:
IF %M%==1 GOTO REPACKSYSTEM
IF %M%==2 GOTO REPACKVENDOR
IF %M%==3 GOTO REPACKALL
IF %M%==4 GOTO MENU
GOTO MENU

:UNPACKSYSTEM
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
if exist bin\tmp rd /s /q bin\tmp
if exist editor rd /s /q editor
if not exist bin\tmp mkdir bin\tmp
if not exist editor mkdir editor

if exist system.img (
echo - Unpacking system.img
bin\windows\imgextractor system.img editor\system >nul 2>nul
)

set tmp=bin\tmp
if exist system_file_contexts move /y system_file_contexts editor\  >nul 2>nul
if exist system_fs_config move /y system_fs_config editor\  >nul 2>nul
if exist system move /y system editor\system2  >nul 2>nul

if exist editor\system (
echo - Unpack Done
echo.
)
if exist editor rd /s /q bin\tmp
pause
GOTO MENU

:UNPACKVENDOR
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
if exist bin\tmp rd /s /q bin\tmp
if exist editor rd /s /q editor
if not exist bin\tmp mkdir bin\tmp
if not exist editor mkdir editor

if exist vendor.img (
echo - Unpacking vendor.img
bin\windows\imgextractor vendor.img editor\vendor >nul 2>nul
)

set tmp=bin\tmp
if exist vendor_file_contexts move /y vendor_file_contexts editor\  >nul 2>nul
if exist vendor_fs_config move /y vendor_fs_config editor\  >nul 2>nul

if exist editor\system (
echo - Unpack Done
echo.
)
if exist editor rd /s /q bin\tmp
pause
GOTO MENU

:UNPACKALL
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
if exist bin\tmp rd /s /q bin\tmp
if exist editor rd /s /q editor
if not exist bin\tmp mkdir bin\tmp
if not exist editor mkdir editor

if exist system.img (
echo - Unpacking system.img
bin\windows\imgextractor system.img editor\system >nul 2>nul
)

if exist vendor.img (
echo - Unpacking vendor.img
bin\windows\imgextractor vendor.img editor\vendor >nul 2>nul
)

set tmp=bin\tmp
if exist system_file_contexts move /y system_file_contexts editor\  >nul 2>nul
if exist vendor_file_contexts move /y vendor_file_contexts editor\  >nul 2>nul
if exist system_fs_config move /y system_fs_config editor\  >nul 2>nul
if exist vendor_fs_config move /y vendor_fs_config editor\  >nul 2>nul
if exist system move /y system editor\system2  >nul 2>nul

if exist editor\system (
echo - Unpack Done
echo.
)
if exist editor rd /s /q bin\tmp
pause
GOTO MENU

:REPACKSYSTEM
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.

if not exist editor\system (
    echo - Please unpack system.img first!
    pause
    GOTO MENU
)

if exist bin\tmp rd /s /q bin\tmp
mkdir bin\tmp

:: Check if system.img already exists and rename it
if exist system.img (
    echo - system.img already exists. Renaming to original_system.img ...
    ren system.img original_system.img
)

set /p systemsize=<"editor\system_size.txt"
echo - Repack system
:: Check if system.img exists and rename it
if exist system.img (
    echo Renaming existing system.img to original_system.img...
    rename system.img original_system.img
)

:: Repack the new system image as system.img
bin\windows\make_ext4fs -L system -T -1 -S editor\system_file_contexts -C editor\system_fs_config -l %systemsize% -a system system.img editor\system\ >nul

if exist system.img echo - system.img has been repacked

pause
GOTO MENU

:REPACKVENDOR
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.

if not exist editor\vendor (
    echo - Please unpack vendor.img first!
    pause
    GOTO MENU
)

if exist bin\tmp rd /s /q bin\tmp
mkdir bin\tmp

:: Rename existing vendor.img if it exists
if exist vendor.img (
    echo - vendor.img already exists. Renaming to original_vendor.img ...
    ren vendor.img original_vendor.img
)

echo - Repack vendor
set /p vendorsize=<"editor\vendor_size.txt"
bin\windows\make_ext4fs -L vendor -T -1 -S editor\vendor_file_contexts -C editor\vendor_fs_config -l %vendorsize% -a vendor new_vendor.img editor\vendor\ >nul

:: Rename new_vendor.img to vendor.img
if exist new_vendor.img (
    ren new_vendor.img vendor.img
    echo - vendor.img has been repacked
)

pause
GOTO MENU


:REPACKALL
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
if not exist editor\system (
echo - Please unpack system.img first!
pause
GOTO MENU
)

if exist bin\tmp rd /s /q bin\tmp
mkdir bin\tmp

set /p systemsize=<"editor\system_size.txt"
echo - Repacking system.img
:: Check if system.img exists and rename it
if exist system.img (
    echo Renaming existing system.img to original_system.img...
    rename system.img original_system.img
)

:: Repack the new system image as system.img
bin\windows\make_ext4fs -L system -T -1 -S editor\system_file_contexts -C editor\system_fs_config -l %systemsize% -a system system.img editor\system\ >nul
)

if exist new_system.img echo - system.img has been repacked

if not exist editor\system (
echo - Please unpack vendor.img first !!!
pause
GOTO MENU
)

echo - Repacking vendor.img
set /p vendorsize=<"editor\vendor_size.txt"
bin\windows\make_ext4fs -L vendor -T -1 -S editor\vendor_file_contexts -C editor\vendor_fs_config -l %vendorsize% -a vendor new_vendor.img editor\vendor\ >nul

if exist new_vendor.img echo - vendor.img has been repacked
pause
GOTO MENU

:CLEAR
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
echo - Removing files...
rmdir /s /Q editor
echo - Files removed successfully
pause
GOTO MENU

:ABOUT
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
set /P "=------------------------------------- VERSION 1.1 -------------------------------------" < NUL & echo/
ECHO.
set /P "= --------------- COPYRIGHT (C) NOAH DOMINGUES - SEE LICENSE FOR DETAILS ---------------" < NUL & echo/
ECHO.
echo =========== THIS SOFTWARE IS PROVIDED "AS-IS" WITH NO WARRANTY OF ANY KIND. ===========
ECHO.
echo ---------------------------------------------------------------------------------------
ECHO.
echo A simple tool for editing Android .img ROM files. Based on IMG Editor Tool by JordanEJ.
echo Android IMG Editor is available in both console and GUI versions (you are using the console version).
ECHO.
echo For support, join our Discord community! For usage instructions, visit the Android IMG Editor GitHub repository.
ECHO.
ECHO 1 - Join our Discord server
ECHO 2 - Visit us on GitHub
ECHO 3 - Return to menu
ECHO 4 - EXIT
ECHO.
ECHO 5 - Download GUI version (GitHub)
ECHO.
SET /P N=Option:
IF %N%==1 start https://discord.gg/3zbfaTNN7V
IF %N%==2 start https://github.com/NoahDomingues/Android-IMG-Editor/releases
IF %N%==3 GOTO MENU
IF %N%==4 GOTO EOF
IF %N%==5 GOTO GUI
timeout /t 1 /nobreak >nul
GOTO MENU

:GUI
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
echo - Opening download site...
start https://github.com/NoahDomingues/Android-IMG-Editor/releases
timeout /t 1 /nobreak >nul
GOTO MENU

:DISCORD
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
echo - Opening Discord invite...
start https://discord.gg/3zbfaTNN7V
timeout /t 1 /nobreak >nul
GOTO MENU

:GITHUB
cls
ECHO.
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=_____              _           _     _   ___ __  __  ____   _____    _ _ _             " < NUL & echo/
set /P "=//// \   _ __   __| |_ __ ___ (_) __| | |_ _|  \/  |/ ___| | ____|__| (_) |_ ___  _ __ " < NUL & echo/
set /P "=/// _ \ | '_ \ / _` | '__/ _ \| |/ _` |  | || |\/| | |  _  |  _| / _` | | __/ _ \| '__|" < NUL & echo/
set /P "=// ___ \| | | | (_| | | | (_) | | (_| |  | || |  | | |_| | | |__| (_| | | || (_) | |   " < NUL & echo/
set /P "=/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_| |___|_|  |_|\____| |_____\__,_|_|\__\___/|_|   " < NUL & echo/
set /P "=///////////////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO //////////////////// DISCORD SERVER: https://discord.gg/3zbfaTNN7V ////////////////////
ECHO.
echo - Opening GitHub repository...
start https://github.com/NoahDomingues/Android-IMG-Editor
timeout /t 1 /nobreak >nul
GOTO MENU
