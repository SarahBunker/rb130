# birds = %w(raven finch hawk eagle)
# p birds # => ['raven','finch','hawk','eagle']

# raven, finch, hawk, eagle = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p hawk # => 'hawk'
# p eagle # => 'eagle'

# raven, finch, *raptors = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p raptors  # => ['hawk','eagle']
arr1 = %w(raven finch hawk eagle)

def raptor_method(birds)
  yield(birds)
end

raptor_method(arr1) { |_, _, *raptors| raptors.each{|bird| puts bird}}