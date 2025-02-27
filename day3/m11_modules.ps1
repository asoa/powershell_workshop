## slide 5: using modules
Get-Module # shows all modules that can be imported
$env:PSModulePath # shows all module paths
Get-PackageProvider -ListAvailable 
Get-Module -ListAvailable | Select-Object -First 20

## slide 6: module autoloading
Get-Module # see current loaded modules
Get-SmbShare # this will autoload the SmbShare module

## slide 9: module auto-loading; explicitly loading a module
$env:PSModulePath -split ";" # shows all module paths
(Get-Module -ListAvailable).count # get count of all available modules
Get-Module

$PSModuleAutoLoadingPreference = "none" # disable auto-loading
Get-AzAccessToken # this will fail because Az.Accounts module is not loaded

$PSModuleAutoLoadingPreference = "all" # enable auto-loading
Get-AzAccessToken # this will autoload the Az.Accounts module

## slide 11: install module
# powershellgallery.com
# search group policy