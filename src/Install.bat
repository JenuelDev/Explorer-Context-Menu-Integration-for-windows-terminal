reg add "HKCU\Software\Classes\Directory\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_64.ico /f
reg add "HKCU\Software\Classes\Directory\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\"" /f
reg add "HKCU\Software\Classes\Directory\Background\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_64.ico /f
reg add "HKCU\Software\Classes\Directory\Background\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\"" /f
reg add "HKCU\Software\Classes\LibraryFolder\Background\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_64.ico /f
reg add "HKCU\Software\Classes\LibraryFolder\Background\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\"" /f
robocopy ./ %LOCALAPPDATA%\terminal wt_64.ico /E /IS /IT
echo "Context Menu For Windows Terminal is Configured Successfully! Try Right Clicking to see the option."
pause