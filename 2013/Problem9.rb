# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#       a^2 + b^2 = c^2
# 
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#
# Find the product abc.

#sqrt_of_c = Math.sqrt(c)

found = false
product = 0
(1..1000).each do |a|  
  (a+1..1000).each do |b|
    sum = a**2 + b**2
    c = Math.sqrt(sum)
    if a + b + c == 1000
      found = true 
      product = a*b*c
      puts "a: #{a}, b: #{b}, c: #{c}"
    end
    break if found
  end
  break if found
end
puts product 
