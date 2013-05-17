#The prime factors of 13195 are 5, 7, 13, and 29.
#
#What is the largest prime factor of the number 600851475143?
require 'prime'

def get_factor value
  prime_val = 1
  Prime.each(value) do |prime|
    if value % prime == 0
      prime_val = prime
      break
    end
  end
  prime_val 
end

def get_largest_prime number
  factors = []
  result = 1
  begin 
    number = number / result
    result = get_factor(number)
    factors << result if result > 1
  end until result == 1
  factors.max
end

#the_number = 13195
the_number = 600851475143

puts "The largest prime factor of #{the_number} is #{get_largest_prime(the_number)}"
