items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1
# gather(items) do |apple, *rest|
#   list1 = ([apple] + rest[0,2])
#   puts list1.join(", ")
#   list2 = rest - list1
#   puts list2
# end

# 2
# gather(items) do |apples, corn, *rest|
#   puts apples
#   puts ([corn] + rest[0,1]).join(', ')
#   puts rest[1]
# end

# 3
# gather(items) do |apples, *rest|
#   puts apples
#   puts rest.join(', ')
# end

# 4
# gather(items) do |apples, corn, cabbage, wheat|
#   puts [apples, corn, cabbage, wheat].join(', ')
# end

puts 1
gather(items) do |*produce, wheat|
  puts produce.join(', ')
  puts wheat
end

puts 2
gather(items) do |apples, *produce, wheat|
  puts apples
  puts produce.join(', ')
  puts wheat
end

puts 3
gather(items) do |apples, *produce|
  puts apples
  puts produce.join(', ')
end

puts 4
gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end