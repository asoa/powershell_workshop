## slide 9: simple function

# create write-stement function

# Write-Statement

Function Get-SomeService {
  Get-Service -Name WinRM
  Write-Host "Foo"
}

# Get-SomeService

Function Write-ServiceStatus {
  $SVC = Get-Service -Name WinRM
  $Name = $SVC.Name
  $Status = $SVC.Status
  # write-host using $Name and $Status variables
}
# Write-ServiceStatus

## slide 16: parameters in functions
Function Write-Statement {
  Param(
    # add parameters $Statement and $Color
    $Statement,
    $Color
  )
  Write-Host $Statement -ForegroundColor $Color
}

# demo paramater splatting
$Params = @{
  Statement = "Hello, World!"
  Color = "Green"
}

Write-Statement @Params

## slide 23: script blocks
$sb = {Get-Process | Select -First 5}
Invoke-Command $sb 
$sb.Invoke()
{Get-Process | Select-Object -First 5}.Invoke()

## slide 29: dot-source notation

# dot source notation
$MyVariable = "Outside"

Function MyFunction {
  Write-Host "MyVariable is: $MyVariable" # What is this?
  $MyVariable = "Inside"
  Write-Host "MyVariable is: $MyVariable" # What is this?
  Return "Inside"
}

MyFunction

