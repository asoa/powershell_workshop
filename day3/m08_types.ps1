## slide 5 types
$result = 1 + '1'
$result
$result.GetType()

$result = '1' + 1
$result
$result.GetType()

## slide 7: type conversion
$Salary = '1000'
$Bonus = 100
$NewSalary = $Salary + $Bonus
$NewSalary
$NewSalary.GetType()

$NewSalary = [int]$Salary + $Bonus
$NewSalary
$NewSalary.GetType()

## slide 17: static members

[math]::PI
[math]::Round(3.14159, 2)
[datetime]::Now
[datetime]::Today

# enum
[System.DayOfWeek]::Monday

## slide 24: -is operator escape character
1 -is [int]
'foo' -is [int]
'bar' -is [string]
$(get-process)[0] -is [System.Diagnostics.Process]

# escape character
"Hello `nWorld"

@"
  Hello `tWorld
  Hello `n`n`nWorld
"@