=begin
The Range#step method lets you iterate over a range of values where each value in
the iteration is the previous value plus a "step" value. It returns the original range.

Write a method that does the same thing as Range#step, but does not operate on a
range. Instead, your method should take 3 arguments: the starting value, the
ending value, and the step value to be applied to each iteration. Your method
should also take a block to which it will yield (or call) successive iteration values.

Example:
step(1, 10, 3) { |value| puts "value = #{value}" }

value = 1
value = 4
value = 7
value = 10

What do you think would be a good return value for this method, and why?
We should probably return the final value from this method because this is what
we've been building towards by incrementing. We might also return an array of all
the values at each step.

=end

def step(start, stop, increment)
  result = []
  (start..stop).each do |num|
    next unless ((num - 1) % 3) == 0
    yield(num)
    result << num
  end
  result
end

test = step(1, 10, 3) { |value| puts "value = #{value}" }
p ''
p test
# value = 1
# value = 4
# value = 7
# value = 10