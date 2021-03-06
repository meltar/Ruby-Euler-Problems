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
            '70'=> 'seventy', '80'=> 'eighty', '90'=> 'ninety', '1000'=> 'one thousand', '0'=> ''}

def word_form_of_number(words, value, accumulated_string)
  word_form = accumulated_string
  if words.has_key?(value.to_s)
    word_form << "#{words.fetch(value.to_s)}"
  elsif value < 100
    temp_val = "#{value.to_s[0]}0"
    word_form << words.fetch(temp_val)
    temp_val = temp_val.to_i
    if value - temp_val > 0
      word_form << "-" 
      word_form = word_form_of_number(words, value - temp_val, word_form)
    end
  else
    temp_val = "#{value.to_s[0]}"
    word_form << words.fetch(temp_val)
    word_form << " hundred"
    temp_val = (temp_val.to_i * 100)
    if value - temp_val > 0
      word_form << " and "
      word_form = word_form_of_number(words, value - temp_val, word_form)
    end 
  end
  word_form
end

def letter_count(string)
  valid_chars = string.each_char.select { |c| c >= 'a' && c <= 'z' }
  valid_chars.count
end


range_in_words = ''
(1..1000).each { |number| range_in_words << word_form_of_number(stored_words, number, '') }
puts letter_count(range_in_words)
