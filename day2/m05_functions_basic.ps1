Function Write-Statement {
  Write-Host "Hello, World!" -ForegroundColor Green
}

# Write-Statement

Function Get-SomeService {
  Get-Service -Name WinRM
}

# Get-SomeService

Function Write-ServiceStatus {
  $SVC = Get-Service -Name WinRM
  $Name = $SVC.Name
  $Status = $SVC.Status
  Write-Host "The service $Name is $Status" -ForegroundColor Green
}
# Write-ServiceStatus

Function Write-Statement {
  param($Statement, $Color)
  Write-Host $Statement -ForegroundColor $Color
}

$Params = @{
  Statement = "Hello, World!"
  Color = "Green"
}

# Write-Statement @Params

# $sb = {get-process pwsh}
# $sb.Invoke()

# measure-command {Get-Process}

# demonstration script block
$sb = {
  Get-Process
}

# $sb.Invoke()
# invoke-command -ScriptBlock $sb

# dot source notation
$func = {$Service = "ALG"}
$Service = "WinRM"
. $func
$Service # WinRM or ALG?

