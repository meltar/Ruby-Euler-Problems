#The prime factors of 13195 are 5, 7, 13, and 29.
#
#What is the largest prime factor of the number 600851475143?
require 'prime'

def get_largest_prime number
  i = number / 2 
  if i.even?
    i = i - 1
  end
  largest = 1
  while i > 1
    if number % i == 0
      if Prime.prime?(i)
        largest = i 
        break
      end
    end
    i = i - 2
  end
  largest
end

#puts get_largest_prime(13195)
puts get_largest_prime(600851475143)
