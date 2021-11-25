# 1 Write a method that returns true if its argument looks like a URL, false if it does not.

# def url?(string)
#   !!string.match(/\Ahttps?:\/\/\S+\.com\z/)
# end

# or

# def url?(text)
#   text.match?(/\Ahttps?:\/\/\S+\z/)
# end

# p url?('http://launchschool.com')   # -> true
# p url?('https://example.com')       # -> true
# p url?('https://example.com hello') # -> false
# p url?('   https://example.com')    # -> false

# !! coerces result into boolean
#String.match? method is a newer method that returns a boolean

#####################################################
# 2 Write a method that returns all of the fields in a haphazardly formatted string. A variety of spaces, tabs, and commas separate the fields, with possibly multiple occurrences of each delimiter.

# def fields(text)
#   text.split(/[ \t,]+/)
# end

# p fields("Pete,201,Student")
# # -> ["Pete", "201", "Student"]

# p fields("Pete \t 201    ,  TA")
# # -> ["Pete", "201", "TA"]

# p fields("Pete \t 201")
# # -> ["Pete", "201"]

# p fields("Pete \n 201")
# # -> ["Pete", "\n", "201"]

#pick from a collection of space tab or comma, have at least one

######################################
# 3 Write a method that changes the first arithmetic operator (+, -, *, /) in a string to a '?' and returns the resulting string. Don't modify the original string.

# def mystery_math(text)
#   text.sub(/[+\-*\/]/,'?')
# end

# p mystery_math('4 + 3 - 5 = 2')
# # -> '4 ? 3 - 5 = 2'

# p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# # -> '(4 ? 3 + 2) / 7 - 1 = 1'

# sub(patter, replacement) > new string

########################################
# 4 Write a method that changes every arithmetic operator (+, -, *, /) to a '?' and returns the resulting string. Don't modify the original string.

# def mysterious_math(text)
#   text.gsub(/[+\-*\/]/, '?')
# end

# p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
# p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

###########################################
# 5 Write a method that changes the first occurrence of the word apple, blueberry, or cherry in a string to danish.

# def danish(text)
#   text.sub(/\b(apple|blueberry|cherry)\b/i,'danish')
# end

# p danish('An apple a day keeps the doctor away')
# # -> 'An danish a day keeps the doctor away'

# p danish('My favorite is blueberry pie')
# # -> 'My favorite is danish pie'

# p danish('The cherry of my eye')
# # -> 'The danish of my eye'

# p danish('apple. cherry. blueberry.')
# # -> 'danish. cherry. blueberry.'

# p danish('I love pineapple')
# # -> 'I love pineapple'

#######################################
# 6 Challenge: write a method that changes strings in the date format 2016-06-17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.

# def format_date(text)
#   text.sub(/\A([\d]{4})-([\d]{2})-([\d]{2})\z/, '\3.\2.\1')
#   # text.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/,'\3.\2.\1.')
#   # text.split("-").reverse.join(".")
# end

# p format_date('2016-06-17') # -> '17.06.2016'
# p format_date('2016/06/17') # -> '2016/06/17' (no change)

###########################################
# 7 Challenge: write a method that changes dates in the format 2016-06-17 or 2016/06/17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.

def format_date(text)
  text.sub(/\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/,'\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)