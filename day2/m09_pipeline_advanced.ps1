## slide 6 basic comparison
"This" -eq "That"
'a' -eq [char]0x61
1 -eq '1'
1 -eq [int]'1'

## slide 21: filtering w/ parameters versus where-object
Measure-Command {Get-Process | Where-Object {$_.ProcessName -eq 'powershell'}}
measure-command {Get-Process -Name "Powershell"}


## slide 28: foreach-object
Get-Service net* | ForEach-Object {"Hello $_.Name"} # won't work as we intend, why?

Get-Service | foreach {
  Write-Host $($_.DisplayName) -ForegroundColor Green -NoNewline
} 

# demo process

Get-EventLog -LogName System -Newest 5 |
  ForEach-Object -Begin {
    Remove-Item c:\temp\Events.txt -ErrorAction SilentlyContinue
    Write-Host "Start" -ForegroundColor Yellow
  } -Process {
    $_.Message | Out-File c:\temp\Events.txt -Append
  } -End {
    Write-Host "End" -ForegroundColor Yellow  
  }

Get-Process | 
  foreach-object -Begin {
    Remove-Item c:\temp\processes.txt -ErrorAction SilentlyContinue
  } -Process {
    $_.ProcessName | Out-File c:\temp\processes.txt -Append
  } -End {
    Write-Host "Done" -ForegroundColor Yellow
  }

# slide 42: pipeline input
import-csv .\Aliases.csv | 
  foreach-object -Process {
    $Name = $_.Name
    $Value = $PSItem.Value
    Write-Host "Alias: $Name, Value: $Value" -ForegroundColor Green
  }