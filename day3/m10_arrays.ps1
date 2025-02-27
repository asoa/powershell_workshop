## slide 9: creating and accessing arrays
$arr = 1,2,3,4,5
$arr1 = @(10,20,30,40,50)
$arr2 = @(1..10)
$arr3 = @(1..10 | ForEach-Object { $_ * 2 })

## slide 15: working with arrays
$arr = @()
$arr += 1
$arr += 2
$arr += "Foo"
$arr
$arr[3] = "Bar" # will this work? why | why not?

# slide 27: array operators
$arr = 1,2,3,4,5
"My home has {0} Door, {4} Windows, and {1} Bathrooms" -f $arr

$arr[1..4] # array slicing

$arr -contains 3 # returns true or false
$arr -contains 6 # returns true or false

7 -in $arr # returns true or false
3 -in $arr # returns true or false

"1,2,3" -split ","