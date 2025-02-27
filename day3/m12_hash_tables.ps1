## slide 9
$svc = Get-Service | select -first 10 | group-object -Property Status -AsHashTable -AsString
$svc | gm
$svc.Group.gettype()
$svc.Group[0]
$svc.Group[0] | gm

## slide 9: creating hash tables
$hash = @{} # empty hash table
$string = "
Ryan = Whitleyryan.whitley.2.ctr@us.af.mil
Sid = Guidrysidney.guidry.2.ctr@us.af.mil
Tim = Baileytimothy.bailey.8.ctr@us.af.mil
Greg = Toddgregory.todd.4.ctr@us.af.mil
Nathan = Martineznathan.martinez.9.ctr@us.af.mil
William = Guywilliam.guy.5.ctr@us.af.mil
Richard = Wrightrichard.wright.16.ctr@us.af.mil
Andrea = Melendezandrea.melendez.ctr@us.af.mil
Joel = Dsouzajoel.dsouza.2.ctr@us.af.mil
Eric = Pelkeyeric.pelkey.2.ctr@us.af.mil
Martin = Vazquezmartin.vazquez_collazo.ctr@us.af.mil
Patrick = Reidpatrick.reid.7.ctr@us.af.mil
Damanique = Shieldsdamanique.shields.1.ctr@us.af.mil
Josh = Paapjoshua.paap.1.ctr@us.af.mil
Grant = Eddingerrobert.eddinger.ctr@us.af.mil
"
$hash = ConvertFrom-StringData $string
$hash["Grant"]

## slide 10: accessing hash tables
# create a hash table with multiple key-value pairs
$person = @{
  first_name = "Jake"
  last_name = "Smith"
  age = 30
  city = "New York"
  country = "USA"
}
$person["first_name"]
$person.age

## slide 11 and 18: modifying hash table items
$myhouse = @{}
$myhouse["hasdoor"] = $true
$myhouse["haswindow"] = $false
$myhouse.Add("hasgarage", $false)
$myhouse
$myhouse.Remove("haswindow")
$myhouse
$myhouse.Clear() # removes all items from the hash table

## slide 21: calculated properties
get-process | gm # find threads property
(get-process).threads.GetType() # find threads property type -> Array
get-member -InputObject $(1,2,3) # all arrays have count property 

## slide 26: hash table use cases
Get-ChildItem -Path c:\windows -File | Measure-Object -Average -Sum -Maximum -Minimum -Property Length

# create hash table to define properties to measure
$props = @{
  Average = $true
  Sum = $true
  Maximum = $false
  Minimum = $false
}

Get-ChildItem -Path c:\windows -File | Measure-Object @props -Property Length
