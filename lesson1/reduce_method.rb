=begin
goal: implement a reduce method, similar to Enumerable#reduce
# the reduce method yields two arguments to the block. The first argument is an accumulator object, and the second argument is the current element.
#The return value of the block is then assigned to the accumulator object.
# you can assign accumulator to a default value

Your reduce should take at least 1 argument that represents the array we'll operate on. It should also take an optional second argument that represents the default value for the accumulator.

examples:
[1, 2, 3].reduce do |acc, num|
  acc + num if num.odd?
end

# => NoMethodError: undefined method `+' for nil:NilClass

[1, 2, 3].reduce(10) do |acc, num|
  acc + num
end

# => 16
=end


def reduce(array, acc = 0)
  i = 0
  len = array.size
  while i < len do
    acc = yield(acc, array[i])
    i += 1
  end
  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# note this example doesn't include some of the flexibility of the #reduce method, but this example was to practice yeilding to blocks