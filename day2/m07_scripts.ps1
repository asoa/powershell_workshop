## slide 17: execution policy
Get-ExecutionPolicy -List
Get-ExecutionPolicy


#Requires -RunAsAdministrator

#region Powershell Scripts
# copy/paste this code into new script and save script to disk as TestScript.ps1

Write-Host 'Start of script' -BackgroundColor Green
Write-Host 'Display the % CPU Time utilization by the ISE' -BackgroundColor Green
Get-Counter "\Process(Code)\% Processor Time"
#endregion
