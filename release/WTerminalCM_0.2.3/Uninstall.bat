reg delete "HKCU\Software\Classes\Directory\shell\Open Windows Terminal here" /f
reg delete "HKCU\Software\Classes\Directory\Background\shell\Open Windows Terminal here" /f
reg delete "HKCU\Software\Classes\LibraryFolder\Background\shell\Open Windows Terminal here" /f
@RD /S /Q "%LOCALAPPDATA%\terminal"
echo "Removed Configurations."
pause