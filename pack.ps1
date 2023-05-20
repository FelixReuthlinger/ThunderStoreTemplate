## this will generate a .zip file with all necessary contents and store it to your Windows Downloads folder
# Note: remove the "config" or "plugins" elements from "Path = ..." if not used
$TargetZipFileName = "~\Downloads\$(Split-Path -Path $PSScriptRoot -Leaf).zip"
$compress = @{
  Path             = "$PSScriptRoot\README.md", "$PSScriptRoot\CHANGELOG.md", "$PSScriptRoot\manifest.json", "$PSScriptRoot\icon.png", "$PSScriptRoot\config", "$PSScriptRoot\plugins"
  CompressionLevel = "Fastest"
  DestinationPath  = $TargetZipFileName
}
Compress-Archive @compress -Force
