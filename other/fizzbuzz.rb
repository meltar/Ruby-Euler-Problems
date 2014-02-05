# FizzBuzz!
# Other
#
# Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead
# of the number, nad for the multiples of five print "Buzz." For numbers which are multiples of both
# three and five print "FizzBuzz."

def fizzbuzz
	numbers = (1..100).map do |n|
		fizz = n % 3 == 0 ? "Fizz" : ""
		buzz = n % 5 == 0 ? "Buzz" : ""

		result = "#{fizz}#{buzz}"
		result = n if result.empty?
		result
	end
	numbers
end

puts fizzbuzz
