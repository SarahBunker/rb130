=begin
#-------------------------------------------------
PROBLEM:
new robots have random name
rebooting a robot requires a new different name

input: 
output: robot name[string]
mutating?
rules:
  Explicit requirements:
    each robot must have a unique name
      give it a new name if the new random name is the same as another robots name
  Implicit requirements:
    names are two letters followed by 3 digits
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

class variable to store all current robot names
class methods:

instance methods:
#name
#initialize
set name to random name

#random_name
new_name = ""
array of letters
array of digits
create random names until not included in current robot names
  add two random letters
  add 3 random digits
  sample from array add to string
name = new_name

#reset
erase name from class array
call initialize to get new random name
=end



