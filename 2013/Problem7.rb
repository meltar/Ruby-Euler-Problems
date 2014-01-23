# By listing the first six prime numbers 2, 3, 5, 7, 11, and 13, we 
# can see that the 6th prime is 13.
#
# What is the 10,001st prime number?
require 'prime'

def prime_index index
  count = 0
  result = 0
  Prime.each do |prime|
    count += 1
    result = prime
    break if count == index
  end
  result
end

#value = 6
value = 10001
puts "The prime number is #{prime_index(value)}"
