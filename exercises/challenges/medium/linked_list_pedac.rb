=begin
#-------------------------------------------------
PROBLEM:
create a simple linked list
  each element has data and a next field pointing to next element
reverse function
to array function


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

classes
Element
SimpleLinkedList

#-------------------------------------------------
ALGORITHM
example:

Element
#initialize(data, next_element = nil)
#datum > returns data
#tail? > returns boolean, if no next element given then tail is true
#next
  checks if next_element given
  return the next_element
  return nil if no next element given


SimpleLinkedList
#initialize
  @list = []
#size
  @list.size
#empty?
  returns true if #size is 0
#push(data)
  add element to list
    Element.new(data)
    element becomes head of the list
    links next to last item added to list
#peek ? lines 61, 96, 115, 122
  returns 1 when size is one and element is 1
  returns nil when list is empty
#head
  returns an Element obj
  returns the last element added to list
#pop
  returns data of last element added to list
  removes element from list
#to_a
  returns array of list
#reverse
  returns a linked list where the elements are in the opposite order, but the references still go front to back.
    ex a < b < c < d   to d < c < b < a
  
::from_a
  creates a linked_list passing in an argument to create the list from
  
  
AFTERWARDS
peek was meant to look at the data stored in the head.
They had head as an instance variable with a getter method, but I have it as an instance method that returns the last item in the list.
When using the ::from_a method the elements needed to be added in reverse order

=end



