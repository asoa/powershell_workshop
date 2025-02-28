[CmdletBinding()]
param (
    [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [string]$CsvFilePath,
    
    [Parameter(Mandatory=$true)]
    [string]$RegistryKeyPath,
    
    [Parameter(Mandatory=$true)]
    [string]$RegistryValueName,
    
    [Parameter(Mandatory=$true)]
    [string]$LogFilePath,

    [Parameter(Mandatory=$true)]
    [string[]]$ComputerNames
)

function Get-IPsFromCSV {
    param (
        [string]$CsvFilePath
    )
    Import-Csv -Path $CsvFilePath | Select-Object -ExpandProperty IP
}

function Query-RegistryKey {
    param (
        [string]$RegistryKeyPath,
        [string]$RegistryValueName
    )
    try {
        $value = Get-ItemProperty -Path $RegistryKeyPath -Name $RegistryValueName -ErrorAction Stop
        return $value.$RegistryValueName
    } catch {
        Write-Error "Failed to query registry key: $_"
        return $null
    }
}

function Log-Attempt {
    param (
        [string]$LogFilePath,
        [string]$Message
    )
    Add-Content -Path $LogFilePath -Value $Message
}

function Write-ResultToLog {
    param (
        [string]$LogFilePath,
        [string]$IP,
        [string]$Result
    )
    $logMessage = "IP: $IP, Result: $Result"
    Add-Content -Path $LogFilePath -Value $logMessage
}

process {
    $ips = Get-IPsFromCSV -CsvFilePath $CsvFilePath
    foreach ($ip in $ips) {
      Invoke-Command -ComputerName $ip -ScriptBlock {
        param (
          $ip,
          $RegistryKeyPath,
          $RegistryValueName,
          $LogFilePath
        )
        Log-Attempt -LogFilePath $LogFilePath -Message "Querying registry for IP: $ip"
        $result = Query-RegistryKey -RegistryKeyPath $RegistryKeyPath -RegistryValueName $RegistryValueName
        Write-ResultToLog -LogFilePath $LogFilePath -IP $ip -Result $result
      } -ArgumentList $ip, $RegistryKeyPath, $RegistryValueName, $LogFilePath
    }
}