# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
# without any remainder.
#
# What is the smallest positive number that is evenly divisible by all the numbers 
# from 1 to 20?

def find_smallest_number(largest_divisor)
  smallest = largest_divisor
  found = false
  while !found
    found = true 
    largest_divisor.downto(1) do |i| 
      if smallest % i != 0
        smallest += largest_divisor
        found = false
        break
      end
    end
  end
  smallest
end

puts "The smallest number is #{find_smallest_number(20)}"
