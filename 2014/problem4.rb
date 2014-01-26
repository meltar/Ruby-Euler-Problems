# Largest palindrome product
# Problem 4
#
# A palendromic number reads the same both ways.  The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 x 99
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome digits
	largest_found = 1

	min = range_min digits
	max = range_max digits

	(min...max).each do |x|
		(x...max).each do |y|
			product = x * y
			if product.to_s == product.to_s.reverse && product > largest_found
				largest_found = product
			end
		end
	end

	largest_found
end

def range_max digits
	10 ** digits
end

def range_min digits
	10 ** (digits - 1)
end

#puts largest_palindrome 2 
puts largest_palindrome 3
