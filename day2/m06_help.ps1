<#
.SYNOPSIS
  A short one-line action-based description, e.g. 'Tests if a function is valid'
.DESCRIPTION
  A longer description of the function, its purpose, common use cases, etc.
.PARAMETER Foo
  A description of the parameter, its type, and any other relevant information.
.PARAMETER Barz
  A description of the parameter, its type, and any other relevant information.
.EXAMPLE
  Test-MyTestFunction -Verbose
  Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
#>

function Test-MyTestFunction {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Foo,

        [Parameter(Mandatory = $true)]
        [array]$Bars
    )
}

Function Get-SysLogNN {
  <#
  .SYNOPSIS
    A short one-line action-based description, e.g. 'Tests if a function is valid'
  .DESCRIPTION
    A longer description of the function, its purpose, common use cases, etc.
  .NOTES
    Information or caveats about the function e.g. 'This function is not supported in Linux'
  .LINK
    Specify a URI to a help page, this will show when Get-Help -Online is used.
  .EXAMPLE
    Test-MyTestFunction -Verbose
    Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
  #>
  [CmdletBinding()]
  param (
    [Parameter(Mandatory = $true)]
    [string]$Log,

    [Parameter(Mandatory = $true)]
    [int]$NumberOfEvents
  )
  # param($Log, $NumberOfEvents)
  # Get-EventLog -LogName $Log -Newest $NumberOfEvents
}

get-help Get-SysLogNN -Full
