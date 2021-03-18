=begin
Fill out the following method calls for gather so that they produce the
corresponding output shown in numbers 1-4 listed below:


=end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce, final|
  puts produce.join(', ')
  puts final
end

# Outputs
# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

puts ""

gather(items) do |first, *middle, last|
  puts first
  puts middle.join(", ")
  puts last
end

# Outputs
# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

puts ""

gather(items) do |first, *last|
  puts first
  puts last.join(', ')
end

# Outputs
# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

puts ""

gather(items) do |first, second, third, fourth|
  puts "#{first}, #{second}, #{third}, and #{fourth}"
end

# Outputs
# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!