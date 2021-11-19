=begin
goal: code a times method that mirrors the Integer#times method. This method won't have a calling object so this should be passed in as an argument.
example
# method invocation
times(5) do |num|
  puts num
end

# Output:
# 0
# 1
# 2
# 3
# 4
# => 5
=end

# method from core
5.times do |num|
  puts num
end
# starts with 0 and iterates up to one less then the number

#my implementation
def times(num)
  i = 0
  while i < num do
    yield(i)
    i += 1
  end
  num
end
puts 
times(5) { |num| puts num}