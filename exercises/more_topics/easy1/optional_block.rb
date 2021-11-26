def compute
  block_given? ? yield : "Does not compute."
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

def compute(arg)
  block_given? ? yield(arg) : "Does not compute."
end

p compute(5) { |num| num + 3 } == 8
p compute("a") { |let| let + 'b' } == 'ab'
p compute(5) == 'Does not compute.'