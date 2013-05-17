#The prime factors of 13195 are 5, 7, 13, and 29.
#
#What is the largest prime factor of the number 600851475143?
require 'prime'

def get_largest_prime number
  if number % 2 == 0
    i = number / 2
  else
    i = number
  end
  largest = 1
  while i > 1
    if number % i == 0
      if Prime.prime?(i)
        largest = i
        break
      end
    end
    i = i - 1
  end
  largest
end

the_number = 13195
#the_number = 600851475143

puts "The largest prime factor of #{the_number} is"
puts "#{get_largest_prime(the_number)}"

# This solution only works for the example number, not 600851475143
