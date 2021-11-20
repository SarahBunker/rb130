def divisors(num)
  result = []
  (1..num).to_a.each do |div|
    result << div if (num % div == 0)
  end
  result
end

p divisors(1)  == [1]
p divisors(7)  == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts 
def divisors(num)
  1.upto(num).select do |div|
    num % div == 0
  end
end

p divisors(1)  == [1]
p divisors(7)  == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts
def divisors(num)
  result = []
  (1..(num/2+1)).to_a.each do |div|
    if (num % div == 0)
      result << div
      result << num / div
    end
  end
  result.sort.uniq
end

p divisors(1)  == [1]
p divisors(7)  == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(25) == [1,5,25]
puts
def divisors(num)
  result = []
  (1..Math.sqrt(num)).to_a.each do |div|
    if (num % div == 0)
      result << div
      result << num / div
    end
  end
  result.sort.uniq
end

p divisors(1)  == [1]
p divisors(7)  == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(25) == [1,5,25]