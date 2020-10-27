$ErrorActionPreference = 'Stop';

$packageName = 'droidcam'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version = '6.3.3'
$url = "https://files.dev47apps.net/win/DroidCam.Setup.$version.exe"
$url64 = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Droidcam Client'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
