ECHO OFF
CLS

setlocal
title Android IMG Editor

color 1F
echo(
echo ==================== Android IMG Editor - v1.0 ====================
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
ECHO.
ECHO 1 - Unpack .img
ECHO 2 - Repack .img
ECHO 3 - Clear unpacked files
ECHO 4 - EXIT
ECHO.
SET /P M=Option:
IF %M%==1 GOTO UNPACK
IF %M%==2 GOTO REPACK
IF %M%==3 GOTO CLEAR
IF %M%==4 GOTO EOF

:UNPACK
cls
ECHO.
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
ECHO.

if not exist editor\system (
    echo - Please unpack a system.img first!
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
ECHO.
if not exist editor\vendor (
echo - Please unpack vendor.img first!
pause
GOTO MENU
)

if exist bin\tmp rd /s /q bin\tmp
mkdir bin\tmp

echo - Repack vendor
set /p vendorsize=<"editor\vendor_size.txt"
bin\windows\make_ext4fs -L vendor -T -1 -S editor\vendor_file_contexts -C editor\vendor_fs_config -l %vendorsize% -a vendor new_vendor.img editor\vendor\ >nul

if exist new_vendor.img echo - vendor.img has been repacked
pause
GOTO MENU

:REPACKALL
cls
ECHO.
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
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
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
set /P "=____ __  __  ____   _____ ____ ___ _____ ___  ____    _____ ___   ___  _     " < NUL & echo/
set /P "=|_ _|  \/  |/ ___| | ____|  _ \_ _|_   _/ _ \|  _ \  |_   _/ _ \ / _ \| |    " < NUL & echo/
set /P "=-| || |\/| | |  _  |  _| | | | | |  | || | | | |_) |   | || | | | | | | |    " < NUL & echo/
set /P "=-| || |  | | |_| | | |___| |_| | |  | || |_| |  _ <    | || |_| | |_| | |___ " < NUL & echo/
set /P "=|___|_|  |_|\____| |_____|____/___| |_| \___/|_| \_\   |_| \___/ \___/|_____|" < NUL & echo/
set /P "=/////////////////////////////////////////////////////////////////////////////" < NUL & echo/
ECHO.
ECHO DISCORD SERVER: https://discord.gg/3zbfaTNN7V
ECHO.
echo - Removing Files
rmdir /s /Q editor
echo - Done
pause
GOTO MENU
