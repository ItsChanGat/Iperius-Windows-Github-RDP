@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/ItsChanGat/Iperius-Windows-Github-RDP/refs/heads/main/setup.py
curl -s -L -o nsetup.py https://raw.githubusercontent.com/ItsChanGat/Iperius-Windows-Github-RDP/refs/heads/main/nsetup.py
curl -s -L -o iperius.exe "https://www.iperiusremote.com/dsir.aspx?file=IperiusRemote_Setup.exe&v=4&a=64"
curl -s -L -o show.bat https://raw.githubusercontent.com/ItsChanGat/Iperius-Windows-Github-RDP/refs/heads/main/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/ItsChanGat/Loop-For-Win10/refs/heads/main/loop.bat
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
curl -s -L -o wall.bat https://raw.githubusercontent.com/ItsChanGat/Windows-10-Wallpaper-Changer-With-Batch/refs/heads/main/wall.bat
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet

C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "iperius.exe"
python setup.py
REM python nsetup.py
call wall.bat