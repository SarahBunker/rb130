def each_with_index(collection, &block)
  index = 0
  collection.each do |item|
    block.call(item,index)
    index += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]