$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'droidcam'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version = '6.3.3'
$url = "https://files.dev47apps.net/win/DroidCam.Setup.$version.exe" # download url, HTTPS preferred
$url64 = $url # 64bit URL here or remove - if installer is both, use $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64

  softwareName  = 'Droidcam Client'

  silentArgs   = '/S' # NSIS
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
