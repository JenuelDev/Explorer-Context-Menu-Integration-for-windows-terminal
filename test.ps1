$path = 'test'
if(Test-Path .\$path){
     Remove-Item ./$path -Recurse
     New-Item -Path . -Name $path -ItemType "directory"
}else{
     New-Item -Path . -Name $path -ItemType "directory"
}
Copy-Item -Path .\src\bat\Install.bat -Destination .\$path -PassThru
Copy-Item -Path .\src\bat\Uninstall.bat -Destination .\$path -PassThru
if(Test-Path .\$path\'terminal'){
     Remove-Item ./$path/terminal -Recurse
     New-Item -Path . -Name $path\terminal -ItemType "directory"
}else{
     New-Item -Path . -Name $path\terminal -ItemType "directory"
}
Copy-Item -Path .\src\terminal\wt_32.ico -Destination .\$path\terminal -PassThru


Read-Host -Prompt "Press Enter to exit"