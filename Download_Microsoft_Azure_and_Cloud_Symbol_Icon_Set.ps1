<#
.SYNOPSIS

A script used to download the Microsoft Azure Cloud and AI Symbol / Icon Set - SVG (version 2019.9.11)

.DESCRIPTION

A script used to download the Microsoft Azure Cloud and AI Symbol / Icon Set - SVG (version 2019.9.11). The downloaded ZIP file (Microsoft_Cloud_AI_Azure_Service_Icon_Set_2019_09_11.zip)
will be extraced to the Microsoft_Cloud_AI_Azure_Service_Icon_Set folder in the My Shapes folder. After extraction the ZIP file will be 
deleted. Three seconds after the completion of the script the Windows Terminal (or PowerShell) window will be closed.

.NOTES

Filename:       Download_Microsoft_Azure_and_Cloud_Symbol_Icon_Set.ps1
Created:        27/08/2019
Last modified:  09/01/2020
OS:             Windows 7 or later          
PowerShell:     5.1
Version:        3.0
Action:         Change variables were needed to fit your needs
Author:         Wim Matthyssen
Twitter:        @wmatthyssen
Disclaimer:     This script is provided "As IS" with no warranties.

.EXAMPLE

.\Download_Microsoft_Azure_and_Cloud_Symbol_Icon_Set.ps1

.LINK

https://tinyurl.com/y3wmsh7o
#>

## 09/01/2020 Changed script name to Download_Microsoft_Azure_and_Cloud_Symbol_Icon_Set.ps1
## 09/01/2020 Changed Microsoft Azure Cloud and AI Symbol / Icon Set version to 2019.9.11

## Variables

$scriptName = "Download_Microsoft_Azure_and_Cloud_Symbol_Icon_Set"
$myDocuments = [environment]::getfolderpath("mydocuments")
$myShapes = "My Shapes"
$myShapesFolder = $myDocuments + "\" + $myShapes
$myShapesValidPath = Test-Path $myShapesFolder
$symbolVersion = "_2019_09_11"
$zipName = "Microsoft_Cloud_AI_Azure_Service_Icon_Set" + $symbolVersion + ".zip"
$azureIconUrl = "https://download.microsoft.com/download/1/7/1/171DA19A-5477-4F50-B354-4ABAF28502A6/{0}" -f $zipName
$azureIconZip = "{0}\{1}" -f $myShapesfolder,$zipName
$azureIconFolder = $myShapesFolder + "\Microsoft_Cloud_AI_Azure_Service_Icon_Set" + $iconVersion
$azureIconValidPath = Test-Path $azureIconFolder
$writeEmptyLine = "`n"
$writeSeperator = " - "
$writeSpace = " "
$time = Get-Date -UFormat "%A %m/%d/%Y %R"
$foregroundColor1 = "Red"
$foregroundColor2 = "Yellow"

##----------------------------------------------------------------------------------------------------------------------------------------------------

## Start script execution

Write-Host ($writeEmptyLine + "#" + $writeSpace + $scriptName + $writeSpace + "script started" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor1 $writeEmptyLine 

##----------------------------------------------------------------------------------------------------------------------------------------------------

## Test if the My Shapes folder exists, if not exit the script
 
If ($myShapesValidPath -eq $True){Write-Host ($writeEmptyLine + "#" + $writeSpace + "The" + $writeSpace + $myShapes + $writeSpace`
+ "folder exists, script wil go on" + $writeSeperator + $time) -foregroundcolor $foregroundColor2 $writeEmptyLine
}Else{
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Please install Microsoft Visio, this script will exit in 3 seconds" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor1 $writeEmptyLine
Start-Sleep -s 3
stop-process -Id $PID}
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
 
## Test if the Microsoft_Cloud_AI_Azure_Service_Icon folder already exists in the My Shapes folder exists, if so exit the script
 
If ($azureIconValidPath -eq $True){Write-Host `
($writeEmptyLine + "#" + $writeSpace + "The Microsoft_Cloud_AI_Azure_Service_Icon folder exists, script will exit in 3 seconds"`
+ $writeSeperator + $time) -foregroundcolor $foregroundColor1 $writeEmptyLine
Start-Sleep -s 3
stop-process -Id $PID
}Else{
Write-Host ($writeEmptyLine + "#" + $writeSpace +"Checks completed, script will go on" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine}
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
 
## Download ZIP file and save to My Shapes folder
 
Import-Module BitsTransfer
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Starting download" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine
Start-BitsTransfer -Source $azureIconUrl -Destination $myShapesFolder
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Download complete" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
 
## Extract ZIP file 
 
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Starting extraction" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine
Expand-Archive $azureIconZip -DestinationPath $azureIconFolder
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Extraction completed" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
 
## Clean up ZIP file
 
Remove-Item $azureIconZip
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Cleaned up extracted file" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor2 $writeEmptyLine
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
 
## Exit PowerShell window 3 seconds after completion
 
Write-Host ($writeEmptyLine + "#" + $writeSpace + "Script completed, the PowerShell window will close in 2 seconds" + $writeSeperator + $time)`
-foregroundcolor $foregroundColor1 $writeEmptyLine
Start-Sleep 3
stop-process -Id $PID
 
##----------------------------------------------------------------------------------------------------------------------------------------------------
