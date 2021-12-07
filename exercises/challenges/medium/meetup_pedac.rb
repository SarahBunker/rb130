=begin
#-------------------------------------------------
PROBLEM:
Create a class whose objects represent a meetup date
object takes a month(1-12) and a year(eg 2021)
object can tell the date of the meeting in the specified month and year

input: 
#intialize(year, month)
#day(day_of_week, descriptor)
output:
#date
returns a date object that matches the description in the given month and year

mutating?
rules:
  Explicit requirements:
    CASE INSENSITIVE
    possible descriptors
    ['first', 'second', 'third', 'fourth', 'fifth', 'last', 'teenth']
    teenth are :13, 14, 15, 16, 17, 18, 19
    days of week are ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
    some dates won't happen every month
      do what? >> return nil
  Implicit requirements:
    some dates won't happen every month
      do what? >> return nil
Unclear parts of problem?
Edge cases?

Date(year, month, day)
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

def class meetup
class methods:
#new(year, month)

instance methods:

#day
select days(obj) of the month that match the day of the week
  descriptor
    first, take first day of selection [use a method that returns nil if index is out of bounds]
    second, take second day..
    ...
    fith, take fith day of selection [use a method that returns nil if index is out of bounds]
    last, take last day of selection
    teenth
      select the day that has date between 13-19

#day
iterate through days of the month until day matches descriptor
  return day
if no day matches
  return nil
  
First through fith
count of days = 0
iterate through days
  add 1 to count of days if day matches descriptor
  break if count matches descriptor count
return day

Last
array of days = []
itterate through days
  add day obj to array if day matches descriptor
return last day in array

teenth
itterate 13-19 days of the month
  return day of week from method
end
=end



