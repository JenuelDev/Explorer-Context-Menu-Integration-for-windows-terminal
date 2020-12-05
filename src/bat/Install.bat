reg add "HKCU\Software\Classes\Directory\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_32.ico /f
reg add "HKCU\Software\Classes\Directory\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\" \"-d .\"" /f
reg add "HKCU\Software\Classes\Directory\Background\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_32.ico /f
reg add "HKCU\Software\Classes\Directory\Background\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\" \"-d .\"" /f
reg add "HKCU\Software\Classes\LibraryFolder\Background\shell\Open Windows Terminal here" /v icon /d %LOCALAPPDATA%\terminal\wt_32.ico /f
reg add "HKCU\Software\Classes\LibraryFolder\Background\shell\Open Windows Terminal here\command" /d "\"%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe\" \"-d .\"" /f
robocopy .\terminal %LOCALAPPDATA%\terminal /E /IS /IT
echo "Context Menu For Windows Terminal is Configured Successfully! Try Righ Clicking to see the option."
pause