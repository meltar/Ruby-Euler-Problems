# Sum square difference
# Problem 6
#
# The sum of the squares of the first ten natural numbers is,
#
#				1^2 + 2^2 + ... + 10^2 = 385
#
#	The square of the sum of the first ten natural numbers is,
#
#				(1 + 2 + ... + 10)^2 = 55^2 = 3025
#
#	Hence the difference between the sum of the squares of the first ten natural numbers
#	and the square of the sum is 3025 - 385 = 2640.
#
#	Find the difference between the sum of the squares of the first one hundred natural
#	numbers and the square of the sum.

def difference_between_sum_of_squares limit
	squares = (1..limit).map { |i| i ** 2 }
	sum_of_squares = squares.inject(:+)
	sum = (1..limit).inject(:+)
	square_of_sums = sum ** 2

	square_of_sums - sum_of_squares
end

#puts difference_between_sum_of_squares 10
puts difference_between_sum_of_squares 100
