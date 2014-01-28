# Special Pythagroean triplet
# Problem 9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#		a**2 + b**2 = c**2
#
#	For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#
#	There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#	Find the product abc.

def find_product_of_triplet sum_of_triplet
	product = 0

	(0..sum_of_triplet).each do |a|
		(a..sum_of_triplet).each do |b|
			c = Math.sqrt(a ** 2 + b ** 2)
			product = a * b * c if c + a + b == sum_of_triplet
			break if product > 0
		end
		break if product > 0
	end

	product
end

puts find_product_of_triplet 1000
