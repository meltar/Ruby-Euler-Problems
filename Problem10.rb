# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

def prime_sum(max_sum)
  sum = 0
  Prime.each do |prime|
    break if prime >= max_sum
    sum += prime
  end
  sum
end

#puts "The sum of the primes below 10 is #{prime_sum(10)}."
puts "The sum of the primes below 2,000,000 is #{prime_sum(2000000)}."
