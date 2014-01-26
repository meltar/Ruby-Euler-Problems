# Largest prime factor
# Problem 3
#
# The prime factors of 13195 are 5, 7, 13, and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def find_largest_prime_factor number
	largest_factor = 1
	
	(2..Math.sqrt(number)).reverse_each do |x|
		if number % x == 0 && Prime.prime?(x)
			largest_factor = x
			break
		end
	end
	largest_factor
end

#puts "The largest factor of 13195 is #{find_largest_prime_factor 13195}"
puts "The largest factor of 600851475143 is #{find_largest_prime_factor 600851475143}"
