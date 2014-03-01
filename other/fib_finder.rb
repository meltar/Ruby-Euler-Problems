# write a function that takes one parameter n (Integer) and returns the nth element of the fibonacchi sequence

# ex: fib(5) would return 5

def fib_element(value)
  first_number = 0
  second_number = 1
  next_element = 1
  (value - 1).times do
    next_element = first_number + second_number
    first_number = second_number
    second_number = next_element
  end
  if value == 0
    first_number
  else
    next_element
  end
end

#puts fib_element(5)
#puts fib_element(10)

#(0..10).each { |n| puts fib_element(n) }

puts fib_element(3) + fib_element(4)

def fib_element_finder(value)
  if value == 0
    0
  elsif value == 1
    1
  else
    fib_element_finder(value - 1) + fib_element_finder(value - 2)
  end

end
  
(0..10).each { |n| puts fib_element_finder(n) }
puts fib_element_finder(5)
