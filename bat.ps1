Copy-Item -Path .\test\Install.bat -Destination .\src\bat -PassThru
Copy-Item -Path .\test\Uninstall.bat -Destination .\src\bat -PassThru
Read-Host -Prompt "Press Enter to exit"