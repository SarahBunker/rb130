=begin
#-------------------------------------------------
PROBLEM:
create a clock class independant of date

input: 
output:
mutating?
rules:
  Explicit requirements:
    independant of date
    can't use built in methods
    only use arithmetic operations
    
    add and subtract miniutes
    two clocks with the same time are equal
  Implicit requirements:
    formatting is important
    clock is military time
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

class methods:
::at(hour, minutes = 0)
return clock object

instance methods:
#to_s
  outputs string representation of hours and minutes
  put hours and minutes in array
  convert hours and minutes to strings
  itterate, if each string is 1 character long add a zero to the front
  join the array with a colon

#+(minutes)
  xx convert to hours and minutes #min_to_h_m
  add hours and minutes to instance variables
  #normalize_positive_time

#-(minutes)
  xx convert to hours and minutes #min_to_h_m
  add hours and minutes to instance variables
  #normalize_negative_time
# ==
  compares if hours and minutes of both objects are the same

xxxx
#minutes to hours and minutes
  divide minutes by 60
  result is hours
  remainder is minutes
xxxx

#normalize_negative_time
  take hours and minutes
  if minutes are negative
    subtract an hour from hours
    add 60 min to minutes until minutes are positive
  if hours are negative
    add 24 hours to hours until hours are positive
  
#normalize_positive_time
  if minutes are >= 60
    subtract 60 min from minutes
    add an hour to hours
    until minutes [0,59]
  if hours are >= 24
    subtract 24 from hour
    until hours [0,23]
=end



