def step(start, ending, step_value, &block)
  num = start
  while num <= ending
    block.call(num)
    num += step_value
  end
  num
end

step(1, 10, 3) { |value| puts "value = #{value}" }

