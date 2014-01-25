# 10001st prime
# Problem 7
#
# By listing the first six numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th 
# prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

def nth_prime_number number
	primes = Prime.first(number)
	primes.last
end

#puts nth_prime_number 6
puts nth_prime_number 10001
