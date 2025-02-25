# demo process

# Get-EventLog -LogName System -Newest 5 |
#   ForEach-Object -Begin {
#     Remove-Item c:\temp\Events.txt -ErrorAction SilentlyContinue
#     Write-Host "Start" -ForegroundColor Yellow
#   } -Process {
#     $_.Message | Out-File c:\temp\Events.txt -Append
#   } -End {
#     Write-Host "End" -ForegroundColor Yellow  
#   }

# Get-Process | 
#   foreach-object -Begin {
#     Remove-Item c:\temp\processes.txt -ErrorAction SilentlyContinue
#   } -Process {
#     $_.ProcessName | Out-File c:\temp\processes.txt -Append
#   } -End {
#     Write-Host "Done" -ForegroundColor Yellow
#   }

# Demo pipeline input
import-csv .\Aliases.csv | 
  foreach-object -Process {
    $Name = $_.Name
    $Value = $_.Value
    Write-Host "Alias: $Name, Value: $Value" -ForegroundColor Green
  }