## bind object by value
# Create a custom object and pass it into the function
$myObject = [PSCustomObject] @{
  #Name = "MyTestObject"
  Id = 1
}

# Define a function that accepts objects ByValue
function Get-CustomObject {
  [CmdletBinding()]
  param(
      [Parameter(ValueFromPipeline = $true)] 
      [PSCustomObject]$InputObject
  )

  process {
      Write-Host "Received Object: $($InputObject.Name) - $($InputObject.Id)"
  }
}

# Create a custom object and pass it into the function
function Get-CustomObjectByValue {
  [CmdletBinding()]
  param(
      [Parameter(ValueFromPipeline = $true)] 
      [PSCustomObject]$InputObject
  )

  process {
      Write-Host "Received Object: $($InputObject.Name) - $($InputObject.Id)"
  }
}

$myObject | Get-CustomObjectByValue

## bind object my name
function Get-CustomObjectByName {
  [CmdletBinding()]
  param(
      # [Parameter(ValueFromPipelineByPropertyName = $true)] 
      #[string]$Name,
      [Parameter(ValueFromPipelineByPropertyName = $true)]
      [int]$Id
  )

  process {
      Write-Host "Received Object: $($Name) - $($Id)"
      Write-Host "Received Object: $($Id)"
  }
}

$myObject | Get-CustomObjectByName

## powershellgallery security 
# https://learn.microsoft.com/en-us/powershell/gallery/how-to/publishing-packages/publishing-a-package?view=powershellget-3.x
# download package and scan it with antivirus software before installing it
