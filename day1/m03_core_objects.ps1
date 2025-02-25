## slide 10 demostrate powershell objects
$date = get-date

## slide 16 demonstrate gettype() get-member
$date = Get-Date

## slide 21 demonsrate automatic variables
# do from console

## slide 24 demonstrate user defined variables
## demonstration user defined variables
Set-Variable 

# constant

# readonly

# force change

## slide 33 Demonstration Strings, Here Strings and Subexpressions
$service = get-service -name Spooler
write-output -InputObject "found the name service $service.name"
# use variable expansion $()
