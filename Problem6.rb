# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first 
# hundred natural numbers and the square of the sum.

def sum_of_the_squares max_number
  sum = 0
  (1..max_number).each { |i| sum += (i ** 2) }
  sum
end

def square_of_the_sum max_number
  sum = 0
  (1..max_number).each { |i| sum += i }
  sum ** 2
end

def difference max_number
  square_of_the_sum(max_number) - sum_of_the_squares(max_number)
end

puts difference(100)
