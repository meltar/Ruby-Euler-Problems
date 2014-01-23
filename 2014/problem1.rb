# Multiples of 3 and 5
# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6,
# and 9.  The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiplier_total multiples, limit
	total = 0
	1.upto(limit - 1) do |number|
		total += number if number % 3 == 0 || number % 5 == 0
	end
	total
end

puts multiplier_total [3,5], 1000
