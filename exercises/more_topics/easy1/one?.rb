# def one?(collection, &block)
#   result = false
#   return result if collection.empty?
#   collection.each do |item|
#     if block.call(item)
#       result ? (return false) : result = true 
#     end
#   end
#   result
# end

def one?(collection, &block)
  seen_one = false
  collection.each do |item|
    next unless block.call(item)
    return false if seen_one
    seen_one = true
  end
  seen_one
end

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }                     == false
