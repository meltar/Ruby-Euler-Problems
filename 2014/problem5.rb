# Smallest multiple
# Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
# without any remainder.
#
# What is the smallest positive number that is evenly divisible by all the numbers from
# 1 to 20?

def smallest_multiple max
	found = false
	current_number = 0

	until found
		current_number += 20
		match = true

		(1..max).each do |i|
			unless current_number % i == 0
				match = false
				break
			end
		end

		found = true if match
	end

	current_number
end

#puts smallest_multiple 10
puts smallest_multiple 20
