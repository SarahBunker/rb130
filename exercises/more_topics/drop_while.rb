# def drop_while(array, &block)
#   result = []
#   array.each_with_index do |item, index|
#     unless block.call(item)
#       result = array[index..-1]
#       break
#     end
#   end
#   result
# end

def drop_while(array, &block)
  index = 0
  while index < array.size && block.call(array[index])
    index += 1
  end
  
  array[index..-1]
end


p drop_while([1, 3, 5, 6]) { |value| value.odd? }   == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? }  == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true }         == []
p drop_while([1, 3, 5, 6]) { |value| false }        == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 }    == [5, 6]
p drop_while([]) { |value| true }                   == []
