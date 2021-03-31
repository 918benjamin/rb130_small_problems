# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." } # outputs nothing
# puts my_proc # outputs a proc object encoding
# puts my_proc.class # Proc
# my_proc.call # This is a .
# my_proc.call('cat') # This is a cat.

# Observations
# - We have demonstrated two different ways of instantiating a proc
  # - proc {block}
  # - Proc.new {block}
# - Procs have loose arity - they do not complain about the wrong number of arguments

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda # Proc object encoding
# puts my_second_lambda # Proc object encoding
# puts my_lambda.class # Proc
# my_lambda.call('dog') # This is a dog.
# my_second_lambda.call('fish') # This is a fish.
# my_lambda.call # ArgumentError, missing "thing"
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Observations
# - We have demonstrated two ways to define a lambda
#   - lambda {block}
#   - -> (block param) {block} 
# - We have also demonstrated that you can't define a new lambda with the Lambda.new syntax
#   because lambda is not an instance of some Lambda class (doesn't exist)
# - lambdas are a special type of Proc object, so the lambda's class is Proc
# - outputing a lambda shows that it is a Proc object with the special (lambda) encoding
# - Lambdas have stricter arity than procs - they do complain if passed the wrong # of args

# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."} # This is a .
# block_method_1('seal') # LocalJumpError

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # This is a turtle.
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end # This is a turtle and a .
block_method_2('turtle') { puts "This is a #{animal}."} # NameError