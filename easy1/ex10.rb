=begin
Write a method that takes an array as an argument, and a block that returns true
or false depending on the value of the array element passed to it. The method
should return a count of the number of times the block returns true.

You may not use Array#count or Enumerable#count in your solution.

Examples:
count([1,2,3,4,5]) { |value| value.odd? } == 3
count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
count([1,2,3,4,5]) { |value| true } == 5
count([1,2,3,4,5]) { |value| false } == 0
count([]) { |value| value.even? } == 0
count(%w(Four score and seven)) { |value| value.size == 5 } == 2

=end

# Original solution
# def count(collection)
#   count = 0
#   collection.each { |item| count += 1 if yield(item) }
#   count
# end

# Further exploration
# Cannot use each, loop, while, or until
# def count(collection, index=0, &block)
#   return 0 if collection.size == 0
#   return (yield(collection[index]) ? 1 : 0) if index >= collection.size - 1
#   num = yield(collection[index]) ? 1 : 0
#   num + count(collection, index+1, &block)
# end

# Callie's solution
def count(arr)
  total = 0

  arr.size.times do |index|
    total += 1 if yield(arr[index])
  end

  total
end

# [1, 2, 3, 4, 5]
# collection[0] = 1

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2