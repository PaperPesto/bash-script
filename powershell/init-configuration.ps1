# powershell script v2.0.1 LUG 18
# Servizio: Allegati
# --------------------------------------------
# Check your running permission for ps1 script, in case of permission denied, try:
# 1 - Execute powershell as Administrator
# 2 - Check your permission running Get-ExecutionPolicy
# 2.1 - in case of restricted privileges, run Set-ExecutionPolicy unrestricted
# 3 - Confirm your priviliges as unrestricted

param([string]$sourceproject, [string]$targetproject, [string]$environment)

$sourceconfigurationfolder = $sourceproject + "Configuration"
$targetbinfolder = $targetproject + "bin\\" + $environment + "\\netcoreapp2.0\\"

# Creazione cartella \bin\Configuration
$targetconfigurationfolder = New-Item -Path $targetbinfolder -Name "Configuration" -ItemType "directory" -Force

# File di configurazione
$appsettingsfile = "appsettings.json"
$appsettingsenvironmentfile = "appsettings." + $environment + ".json"

Write-Host "## Pre-Build script running with target:" $targetproject
Write-Host "`t Copying configuration from: $sourceconfigurationfolder to $targetconfigurationfolder for environment: $environment"

$files = Get-ChildItem $sourceconfigurationfolder\*.json

# Copia file di configurazione
foreach($file in $files)
{
	if($file.Name -eq $appsettingsenvironmentfile)
	{
		Copy-Item $file.FullName -Destination $targetconfigurationfolder
		Write-Host "`t Copying $file to: $targetconfigurationfolder"
	}

	if($file.Name -eq $appsettingsfile)
	{
		Copy-Item $file.FullName -Destination $targetconfigurationfolder
		Write-Host "`t Copying $file to: $targetconfigurationfolder"
	}
}

# Aggiunta funzionalità: lo script copia anche gli script di DROP e CREATE TABLE

$sourceScriptsFolder = $sourceproject + "Scripts\DB\"
# Creazione cartella \bin\Resources\Scripts\DB
$targetScriptsFolder = New-Item -Path $targetbinfolder -Name "Resources\\Scripts\\DB" -ItemType "directory" -Force
$sqlscripts = Get-ChildItem $sourceScriptsFolder

Write-Host "`t Copying sql scripts from: $sourceScriptsFolder to: $targetScriptsFolder for environment: $environment"

foreach($sqlscript in $sqlscripts){
	Copy-Item $sqlscript.FullName -Destination $targetScriptsFolder
	Write-Host "`t Copying $sqlscript to: $targetScriptsFolder"
}