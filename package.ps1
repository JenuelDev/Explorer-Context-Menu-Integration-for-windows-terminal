$version = (Get-Content package.json) -join "`n" | ConvertFrom-Json | Select-Object -ExpandProperty "version"

$buildNumber = "$version"

$fileName = 'WTerminalCM_'+ $buildNumber + '.zip'

$path = "release"
if(Test-Path .\$path) {
     Remove-Item ./$path -Recurse
     New-Item -Path . -Name $path -ItemType "directory"
}else{
     New-Item -Path . -Name $path -ItemType "directory"
}


if(![System.IO.File]::Exists($path+'/'+$fileName)){
     $compress = @{
          Path = "src/wt_64.ico", "src/Install.bat","src/Uninstall.bat"
          CompressionLevel = "Fastest"
          DestinationPath = $path + '\' + $fileName
     }
     Compress-Archive @compress
     Write-Host $path+'/'+$fileName "Created Successfully!"
}else{
     Write-Warning "$fileName already Exists! Run 'npm version patch' to upgrade version then run 'npm run build'"
}


Read-Host -Prompt "Press Enter to exit"