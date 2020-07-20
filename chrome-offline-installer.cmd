COLOR 0a
cls
@echo off
echo Google Chrome Browser Downloader ...
echo The batch doesn't need admin rights!
pause
echo Please wait, until the download is finished!

if exist ChromeStandaloneSetup64.exe del /f /q ChromeStandaloneSetup64.exe
if exist ChromeStandaloneSetup.exe del /f /q ChromeStandaloneSetup.exe
if exist GoogleChrome.dmg del /f /q GoogleChrome.dmg

REM if exist ChromeStandaloneSetup64.exe del /f /q ChromeStandaloneSetup64.exe
REM if exist ChromeStandaloneSetup.exe del /f /q ChromeStandaloneSetup.exe
REM if exist GoogleChrome.dmg del /f /q GoogleChrome.dmg
powershell -noprofile "Start-BitsTransfer -DisplayName ChromeStandaloneSetup64.exe https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BCEC27557-0338-A6BE-F10F-A625517C44BB%7D%26lang%3Dzh-CN%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable%26installdataindex%3Ddefaultbrowser/update2/installers/ChromeStandaloneSetup64.exe -Destination ChromeStandaloneSetup64.exe"
powershell -noprofile "Start-BitsTransfer -DisplayName ChromeStandaloneSetup.exe https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BCEC27557-0338-A6BE-F10F-A625517C44BB%7D%26lang%3Dzh-CN%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue/update2/installers/ChromeStandaloneSetup.exe -Destination ChromeStandaloneSetup.exe"
powershell -noprofile "Start-BitsTransfer -DisplayName GoogleChrome.dmg https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg -Destination Googlechrome.dmg"
cls
Echo Done.
pause

exit
