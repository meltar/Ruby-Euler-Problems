# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.

def generate_divisors(number)
  divisors = [];
  (1..number/2).each { |i| divisors << i if number % i == 0 }
  divisors
end

def generate_pairs(max)
  all_pairs = []
  pair = { number: 0, sum: 0 }
  1.upto(max - 1).each do |i|
    pair = { number: i, sum: generate_divisors(i).reduce(:+) }
    all_pairs << pair
  end
  all_pairs
end

def sum_amicable_pairs(max)
  all_pairs = generate_pairs(max)
  sum = 0
  all_pairs.each do |a| 
    all_pairs.each do |b|
      if a[:number] == b[:sum] && a[:sum] == b[:number] && a[:number] != b[:number]
       sum += a[:number]
       break
      end 
    end
  end
  sum
end

puts sum_amicable_pairs(10000)
