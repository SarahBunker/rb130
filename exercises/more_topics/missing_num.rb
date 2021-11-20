=begin
Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

=end

def missing(array)
  (array[0]..array[-1]).to_a - array
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
puts
def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat( ((first + 1)..(second - 1)).to_a  )
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
puts
def missing(array)
  result = []
  array.each_index do |i|
    next if i == 0
    temp_num  = array[i - 1]
    num = array[i]
    until temp_num.next == num do
      temp_num = temp_num.next
      result << temp_num
    end
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
puts