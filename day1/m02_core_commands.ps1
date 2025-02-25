## slide 5: external versus native commands
# ping vs test-connection

## slide 16: get command
# verb
# noun
# commandtype
# show-command

## slide 25: native command syntax
# get-command get-process


## slide 29: parameter sets and positional vs named parameters
# open notepad

# set notepad process to variable

# find id using get-member

# find syntax to id to stop process

# stop process with id

# repeat using object


## slide 34: common parameters
# create a file foo
# copy foo to bar with and without verbose

## slide 37: risk parameters
# Demonstrate the whatif switch

# Demonstrate the confirm switch

## slide 43: command termination and line continuation
# command termination
Set-location c:\temp
new-item foo.txt;set-content -path foo.txt -Value "bar";get-content foo.txt;remove-item foo.txt
# line continuation

## set alias
# Set-Alias -Name gitci -Value { git add .; git commit -m 'ci' }