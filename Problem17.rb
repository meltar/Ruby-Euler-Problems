# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 
# 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many 
# letters would be used?
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 
# 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing 
# out numbers is in compliance with British usage.

stored_words = { '1'=> 'one', '2'=> 'two', '3'=> 'three', '4'=> 'four', '5'=> 'five', '6'=> 'six', '7'=> 'seven', 
            '8'=> 'eight', '9'=> 'nine', '10'=> 'ten', '11'=> 'eleven', '12'=> 'twelve', '13'=> 'thirteen', 
            '14'=> 'fourteen', '15'=> 'fifteen', '16'=> 'sixteen', '17'=> 'seventeen', '18'=> 'eighteen', 
            '19'=> 'nineteen', '20'=> 'twenty', '30'=> 'thirty', '40'=> 'forty', '50'=> 'fifty', '60'=> 'sixty',
            '70'=> 'seventy', '80'=> 'eighty', '90'=> 'ninety', '100'=> 'hundred', '1000'=> 'one thousand', '0'=> ''}

def word_form_of_number(words, value, accumulated_string)
  word_form = accumulated_string
  if value < 20 || value == 1000
    word_form << words.fetch(value.to_s)
  elsif value < 100
    temp_val = "#{value.to_s.each_char.first}0"
    word_form << words.fetch(temp_val)
    if value - temp_val.to_i > 0
      word_form << "-" 
      word_form = word_form_of_number(words, value - temp_val.to_i, word_form)
    end
  else
    # FINISH THIS!
  end
  word_form
end

puts word_form_of_number(stored_words, 15, '')
puts word_form_of_number(stored_words, 35, '')
puts word_form_of_number(stored_words, 11, '')
puts word_form_of_number(stored_words, 61, '')
puts word_form_of_number(stored_words, 99, '')

# 
# (1..10).each do |number| 
#   if number >= 20
#     word_form = numbers.fetch(number.to_s, '')
#   elsif number > 100
#     word_form = 
#   end
#   puts word_form
# end
