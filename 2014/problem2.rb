# Even Fibonacci numbers
# Problem 2
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By
# starting with 1 and 2, the first 10 terms will be:
#
#			1, 2, 3, 5, 8, 13, 21, 34, 55, 89..
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

def sum_even_fibonacci_terms limit
	terms = 0

	low_term = 0 
	high_term = 1
	new_term = 0

	while
		new_term = low_term + high_term
		low_term = high_term
		high_term = new_term
		if high_term < limit
			terms += new_term if new_term.even?
		else
			break
		end
	end

	terms
end


puts sum_even_fibonacci_terms 4000000
