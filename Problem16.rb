# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2**1000?

def sum_of_digits(number)
  sum = 0
  digits = number.to_s
  digits.each_char { |c| sum += c.to_i }
  sum
end

total = 2**1000
puts sum_of_digits(total)
