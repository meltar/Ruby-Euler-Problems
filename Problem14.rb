# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.

def generate_chain(num)
  chain = [num]
  while num > 1
    if num.even?
      num = num/2
    else
      num = 3*num+1
    end
    chain << num
  end
  chain.count
end

def find_longest_chain
  max_chain_start = 0
  max_chain_length = 0
  1000000.downto(1) do |start| 
    length = generate_chain(start)
    if length > max_chain_length
      max_chain_length = length
      max_chain_start = start
    end
  end
  max_chain_start
end

puts find_longest_chain
