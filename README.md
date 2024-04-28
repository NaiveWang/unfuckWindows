also grab & paste to your cmd prompt:

### non-developer
```
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
```
### developer

```
echo "show ALL hidden files"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v Hidden /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v ShowSuperHidden /d 1 /f
echo "show file extensions"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v HideFileExt /d 0 /f
echo "always show more options"
reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 /ve /d "" /f
echo "disable web search"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v BingSearchEnabled /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v AllowSearchToUseLocation /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /t REG_DWORD /v CortanaConsent /d 0 /f
echo "enable test signing"
bcdedit -set testsigning on
echo "enable dev mode"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock /t REG_DWORD /v AllowDevelopmentWithoutDevLicense /d 1 /f
:dism /Online /Add-Capability /CapabilityName:Tools.DeveloperMode.Core~~~~0.0.1.0
echo "skip Edge first run page"
reg add HKCU\Software\Policies\Microsoft\MicrosoftEdge\Main /t REG_DWORD /v PreventFirstRunPage /d 1 /f
echo "kill OneDrive"
taskkill /f /im OneDrive.exe
echo "restart explorer"
taskkill /f /im explorer.exe & start explorer.exe
```
