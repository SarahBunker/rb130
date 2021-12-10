# def times(num)
#   i = 0
#   while i < num
#     yield(i) if block_given?
#     i += 1
#   end
#   num
# end

# a = times(5) {|num| puts num}
# puts a

# def each(array)
#   counter = 0
#   while counter < array.size
#     yield(array[counter]) if block_given?
#     counter += 1
#   end
#   array
# end

# a = each([1, 2, 3, 4, 5]) { |num| puts num }
# p a

# each([1, 2, 3, 4, 5]) {|num| "do nothing"}.select{ |num| num.odd? }     # => [1, 3, 5]

# def select(array)
#   new_collection = []
#   i = 0
#   while i < array.size
    
#     (new_collection << array[i]) if yield(array[i])
#     i += 1
#   end
#   new_collection
# end

# array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

# def reduce(array, initial = nil)
#   acc = initial
#   i = 0
  
#   if initial.nil? && !array.empty?
#     acc = array[0]
#     i += 1
#   end
  
#   while i < array.size
#     acc = yield(acc, array[i])
#     i += 1
#   end
#   acc
# end

# array = [1, 2, 3, 4, 5]

# p reduce(array) { |acc, num| acc + num }                    # => 15
# p reduce(array, 10) { |acc, num| acc + num }                # => 25
# # reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
# p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']

def a
  9
end

a = nil

my_proc = Proc.new { puts a }

a = 5

my_proc.call 

