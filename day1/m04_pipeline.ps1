## slide 6: pipeline basics
# create dir
New-Item -Path c:\temp -ItemType Directory

# set working location to path

# get service (select -first 5) 

# get content 

## slide 14: object manipulation
# get-process and sort on Handles

# get-eventlog, select first 10, group object entrytype
# get-eventlog -LogName Security | select -first 10 | group-object entrytype

# use measure-object to count files in c:\windows\system32
# get-childitem -path c:\windows\system32 | measure-object -Property Name

# compare two files
set-content -path .\foo.txt foo
set-content -path .\bar.txt bar
compare-object -ReferenceObject (get-content .\foo.txt) -DifferenceObject (get-content .\bar.txt)
# open side by side to compare

## slide 18: format commands (select -first 5)
# format list
Get-Process | Select-Object -First 5 | Format-List
# format table
# select CPU
# format wide

## slide 23 import-csv
# import-csv
# demo foreach to write-host FirstName


## slide 33 import / export
New-Item c:\temp\userNames.csv
New-Item c:\temp\userNames.csv
Set-Content c:\temp\userNames.csv @(
  '"FirstName";"LastName";"UPN"'
  '"Dan";"Park";"dpark"'
  '"Kim";"Akers";"kakers"'
)

