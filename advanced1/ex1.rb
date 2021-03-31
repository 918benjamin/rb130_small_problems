fact = Enumerator.new do |y|
  a = 1
  num = 0
  loop do
    a = num.zero? ? 1 : a * num
    y << a
    num += 1
  end
end

7.times { |number| puts "#{number}! == #{fact.next}" }
puts ""
7.times { |number| puts "#{number}! == #{fact.next}" }
puts ""
fact.rewind
7.times { |number| puts "#{number}! == #{fact.next}" }
puts ""

fact.each_with_index do |num, index|
  puts "#{index}! == #{num}"
  break if index >= 6
end