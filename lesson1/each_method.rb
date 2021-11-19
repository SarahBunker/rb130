=begin
goal: build your own each method. using Array#each as inspiration.
Array#each returns calling object. make sure to mimic this behavior

example:
[1, 2, 3].each { |num| "do nothing" }                           # still returns [1, 2, 3]

=end

arr1 = [1,2,3]
a = arr1.each {|num| puts num}
p a

def each(array)
  i = 0
  len = array.size
  while i < len do
    yield(array[i])
    i += 1
  end
  array
end

puts
b = each(arr1) {|num| puts num}
p b

puts
c = each([1, 2, 3, 4, 5]) {|num| "do nothing"}.select{ |num| num.odd? }     # => [1, 3, 5]
p c