## slide 11: while, do while, do until loop
# while loop
$i = 10
while ($i -gt 0) {
    Write-Host "`$i is $i"
    $i--
}

# do-while loop
$i = 10
# $i = 0
do {
    Write-Host "`$i is $i"
    $i--
} while ($i -gt 0)

# do-until loop
$i = 10
do {
    Write-Host "`$i is $i"
    $i--
} until (
    $i -lt 0
)

# for loop
for ($i = 0; $i -le 10; $i++) {
    Write-Host "`$i is $i"
}

# foreach loop
$collection = 1..10
foreach ($currentItemName in $collection) {
    Write-Host "`$currentItemName is $currentItemName"
}

# if, elseif, else
$i = 0
if ($i -gt 10) {
    Write-Host "i is greater than 10"
} elseif ($i -eq 10) {
    Write-Host "i is equal to 10"
} else {
    Write-Host "i is less than 10"
}

# switch statement
$day_of_week = "Sunday"
switch ($day_of_week) {
    "Monday" { Write-Host "It's Monday" }
    "Tuesday" { Write-Host "It's Tuesday" }
    "Wednesday" { Write-Host "It's Wednesday" }
    "Thursday" { Write-Host "It's Thursday" }
    "Friday" { Write-Host "It's Friday" }
    "Saturday" { Write-Host "It's Saturday" }
    "Sunday" { Write-Host "It's Sunday" }
    default { Write-Host "Not a day of the week" }
}

## slide 40: break, continue, return
$status = New-Object System.Collections.ArrayList
$status.Add("running")
$status.Add("stopped")
1..20 | ForEach-Object {
    [void]$status.Add("waiting")
}

Function Random {
    $random_number = Get-Random -Minimum 1 -Maximum 20
    return $random_number
}

$random_array = New-Object System.Collections.ArrayList
1..20 | ForEach-Object {
    $random = Random
    $random_array.Add($random)
} 

foreach ($num in $random_array) {
    if ($status[$num] -eq "running") {
        Write-Host "Service is running; no need to keep checking"
        break
    } elseif ($status[$num] -eq "waiting") {
        Write-Host "Service is waiting; checking again"
        Start-Sleep 2
        continue
    } else {
        Write-Host "Service is stopped; turning it on"
        return
    }
}

switch ("pelt") {
    {$_ -like "p*"}       { Write-Host "lowercase wilcard"}
    Default { Write-Host "bar"}
}

