=begin
Write a method that takes an optional block. If the block is specified, the
method should execute it, and return the value returned by the block. If no
block is specified, the method should simply return the String 'Does not compute.'.

Examples:
compute { 5 + 3 } == 8
compute { 'a' + 'b' } == 'ab'
compute == 'Does not compute.'

=end

# Original solution
# def compute
#   block_given? ? yield : 'Does not compute.'
#   # LS solution shows we can return the string first to allow multiple lines after the guard
# end

# p compute { 5 + 3 } == 8          # true
# p compute { 'a' + 'b' } == 'ab'   # true
# p compute == 'Does not compute.'  # true

# Further Exploration
def compute(x)
  block_given? ? yield(x) : 'Does not compute.'
end

p compute(100) { |x| 5 + 3 + x } == 108               # true
p compute('xyz ') { |x| x + 'a' + 'b' } == 'xyz ab'   # true
p compute('z') == 'Does not compute.'                 # true