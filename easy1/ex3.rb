=begin
Write a method that takes a sorted array of integers as an argument, and returns
an array that includes all of the missing integers (in order) between the first
and last elements of the argument.

Examples:
missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []

Problem:
- input: Array of sorted Integers (with some missing)
- output: Array of sorted Integers
  - Only those missing from given Array
- If only one element in given Array, return empty Array
- 0 is included
- given[0]..given[-1]

=end

# First attempt
# def missing(array)
#   return [] if array.size == 1
#   (array[0]..array[-1]).to_a - array
# end

# Second attempt
# def missing(array)
#   result = []
#   array[0].upto(array[-1]) do |num|
#     result << num unless array.include?(num)
#   end
#   result
# end

# Third attempt
def missing(array)
  (array[0]..array[-1]).select { |num| !array.include?(num) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []