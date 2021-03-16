=begin
Write a method that returns a list of all of the divisors of the positive integer
passed in as an argument. The return value can be in any sequence you wish.

Examples

divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

Problem:
- given: integer (positive)
- return: array
  - divisors of the given positive integer
- divisors are numbers that evenly divide into the
  - dividing given modulo num == 0
- can't be divided by more than 50% of the max
- always includes 1 and the max

Algorithm:
- initialize an empty array to store the result
- iterate from 1 up to given/2 + 1
  - for each number
  - add that number to the result array if
    - the given number % the current number == 0
- add the given num to the result
- return the result
=end

def divisors(num)
  result = [1]
  2.upto(num / 2) do |divisor|
    result << divisor if num % divisor == 0
  end
  result << num unless num == 1
  result
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute