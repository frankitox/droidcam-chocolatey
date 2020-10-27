# DroidCam chocolatey

Chocolatey package for Droidcam Windows client. Currently not in
chocolatey's repository, to install:

```ps1
git clone git@github.com:frankitox/droidcam-chocolatey.git
cd droidcam-chocolatey
choco.exe pack
choco.exe install droidcam -s .
```

Code written based on the [Chocolatey's quickstart](https://chocolatey.org/docs/CreatePackagesQuickStart)
to create packages.

# To do

- Does the Droidcam client supports x64?
- Investigate about distribution rights.
