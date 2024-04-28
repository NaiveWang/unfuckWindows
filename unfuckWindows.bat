echo "show ALL hidden files"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v Hidden /d 1 /f
echo "show file extensions"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v HideFileExt /d 0 /f
echo "always show more options"
reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 /ve /d "" /f
echo "disable web search"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v BingSearchEnabled /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v AllowSearchToUseLocation /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v CortanaConsent /d 0 /f
echo "kill OneDrive"
taskkill /f /im OneDrive.exe
echo "restart explorer"
taskkill /f /im explorer.exe & start explorer.exe