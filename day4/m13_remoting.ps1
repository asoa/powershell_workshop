## Slide 9: enable ps remoting

Enable-PSRemoting 
Get-Service WinRM
Get-ChildItem WSMan:\localhost\Listener\
Get-NetFirewallRule -Name winrm-* # TCP 5985, TCP 80

# slide 18: using invoke-command
$sb = {Get-Process}
Invoke-Command -ComputerName localhost -ScriptBlock $sb

