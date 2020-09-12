$version = (Get-Content package.json) -join "`n" | ConvertFrom-Json | Select-Object -ExpandProperty "version"

$buildNumber = "$version"

$fileName = 'Source_'+ $buildNumber + '.zip'

$path = 'package'

if([System.IO.File]::Exists($path)){
     Remove-Item ./$path -Recurse
     New-Item -Path . -Name $path -ItemType "directory"
}

if(![System.IO.File]::Exists($path+'/'+$fileName)){
     $compress = @{
          Path = "src/terminal", "src/bat/Install.bat","src/bat/Uninstall.bat"
          CompressionLevel = "Fastest"
          DestinationPath = 'package\' + $fileName
     }
     Compress-Archive @compress
     Write-Host $path+'/'+$fileName "Created Successfully!"
}else{
     Write-Warning "$fileName already Exists! Run 'npm version patch' to upgrade version then run 'npm run build'"
}


Read-Host -Prompt "Press Enter to exit"