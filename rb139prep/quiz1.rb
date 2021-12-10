##  1 What are closures?

##  2 What is a binding in relation to closures?

##  3 How do you create a closure in Ruby?

##  4 When should you write a method that takes a block?

##  5 What kinds of methods can take a block? standard vs custom?

##  6 Provide an example of a method definition, calling object, block, and method invocation

##  7 You are writing a #welcome method that takes one argument, a string that denotes a greeting, and a block that returns a string. The method must output the argument value followed by a space, (if the block is given) the value returned by the block. Fix the method.
def welcome(str)
  # missing code
end

welcome('Hello') { 'there' } # => Hello there
welcome('Hey') { 'Joe' } # => Hey Joe

##  8 What do we know about block parameters and the number of arguments passed to a block? What is this called?

##  9 What does the following error mean?
# LocalJumpError: no block given (yield)

##  10 What is the method block_given?
# what does block_given? do
# what class is it a method from?
# what output does it have?

##  11 In method definition what does & do in front of an argument?

def true_or_false(&block)
  puts "The block is #{block.call}"
end

true_or_false { 5 > 8 }

##  12 What will the following code output and what is included in the binding on line `5`?

def call_chunk(code_chunk)
  code_chunk.call
end

say_color = Proc.new {puts "The color is #{color}"}
color = "blue"
call_chunk(say_color)

##  13 In the following code there is &:capitalize. What is this code doing and what does it demonstrate?
"the cat in the hat".split.map(&:capitalize).join(' ') # => "The Cat In The Hat"

##  14 What is the expanded code for the following example?
[2, 3, 5].inject(1, &:+)

##  15 Which names are part of the binding for the block body on line 12?

ARRAY = [1, 2, 3]

def abc
  a = 3
end

def xyz(collection)
  collection.map { |x| yield x }
end

xyz(ARRAY) do
  # block body
end