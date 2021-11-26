# def count(collection, &block)
#   count_num = 0
#   collection.each { |item| count_num += 1 if block.call(item) }
#   count_num
# end

# def count(collection, &block)
#   total = 0
#   for i in collection do
#     total += 1 if block.call(i)
#   end
#   total
# end

def count(collection, &block)
  collection.partition { |item| block.call(item) }[0].size
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2