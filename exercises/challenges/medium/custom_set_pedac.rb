=begin
#-------------------------------------------------
PROBLEM:
Define a custom set class

input: 
output:
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

CustomSet
#initialize(array = [])
#empty?
#contains?(item)
#subset?(another customSet object)
  empty sets are subsets of any Set
  check that each element is included in array
    need to access array
#disjoint(another customSet object)
  checks if both sets have any elements in common > false
  otherwise(all unique) return true
#eql
  same value and same class
  order of array can be different
  duplicate elements don't matter
#add(element)
  add elment to end of array
  can't add duplicate values to set using #add
#intersection(another customSet object)
  returns a custom set obj with elements that are common between the two sets
#difference(another customSet object)
  returns a custem set obj with elements that first object has that second object doesn't
  ignores if second object has objects that aren't included in first
#union(other object)
  combines elements from both objects, ignores duplicates
  

AFTERWARD
sets can only have unique elements
values must be numbers?


=end



