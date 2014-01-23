# n! means n × (n − 1) × ... × 3 × 2 × 1
# 
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!

def calculate_factorial_total(number)
  range = number.downto(1).each.map { |i| i }
  range.reduce(:*)
end

def sum_of_digits(value)
  digits = value.to_s
  numbers = digits.each_char.map { |i| i.to_i }
  numbers.reduce(:+)
end

# total = calculate_factorial_total(10)
total = calculate_factorial_total(100)
puts sum_of_digits(total)
