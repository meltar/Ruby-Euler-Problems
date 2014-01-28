# Summation of primes
# Problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

def sum_all_primes_below limit
	Prime.each(limit).reduce(:+)
end

puts sum_all_primes_below 2000000
