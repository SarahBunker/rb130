# def map(collection, &block)
#   result = []
#   collection.each { |item| result << block.call(item) }
#   result
# end 

def map(collection, &block)
  collection.each_with_object([]) { |item, result| result << block.call(item) }
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
puts
p map({1 => 3, 2 => 4, 3 => 3}) { |key, value| value += key }
