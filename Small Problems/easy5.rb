# Easy 5 - Small Problems
# ------------------------
#1 ASCII String Valye
# input -> string, # output -> integer
# return ASCII string value of the string passed in

# def ascii_value(string)
#   sum = 0
#   string.chars.each {|char| sum += char.ord}
#   sum
# end
# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

#2 After Midnight (Part 1)
# input -> integer(minutes), output -> string(time)

HOURS_IN_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_IN_DAY * MINUTES_PER_HOUR

# def time_of_day(minutes)
#   minutes += MINUTES_PER_DAY until minutes >= 0 if minutes < 0
#   minutes -= MINUTES_PER_DAY until minutes <= MINUTES_PER_DAY if minutes > MINUTES_PER_DAY
#   hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end
# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

#3 After Midnight (Part 2)

def after_midnight(time)

end

def before_midnight(time)

end
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

#4 Letter Swap
# intput -> string, output -> string
# first and last letter of each word is switched

# def swap(str)
#   str_arr = str.split(' ').map do |word| 
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end
#   str_arr.join(' ')
# end
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

#5 Clean up the words
# input -> string, output -> string
# clean up non-alphanumeric characters and replace with space. only one space can be in a row.

# ALPHABETIC = ('a'..'z').to_a
# def cleanup(str)
#   new_str = ""
#   str.chars.each do |char|
#     if ALPHABETIC.include?(char)
#       new_str << char
#     else
#       new_str << " "
#     end
#   end
#   new_str.squeeze
# end
# p cleanup("---what's my +*& line?") == ' what s my line '

#6 Letter Counter (Part 1)
# input -> string of words, output -> hash of number of words of certain lengths

# def word_sizes(str)
#   num_hash = Hash.new(0)
#   str.split(' ').each do |word| 
#       word = word.delete('^a-zA-Z0-9')  
#       num_hash[word.length] += 1
#   end
#   num_hash
# end
# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

#7 Letter Counter (Part 2)
# Altered previous code example

#8 Alphabetical Numbers
# input -> array, output -> array 
# array output should be the input array in alphabetical order based on their English word

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.map {|int| NUMBER_WORDS[int]}.sort.map {|num| NUMBER_WORDS.index(num)}
# end
#  p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

#9 ddaaiillyy ddoouubbllee
#input -> string, output -> string 

# def crunch(str)
#   new_str = ''
#   str.chars.each do |letter|
#     new_str << letter unless new_str[-1] == letter
#   end
#   new_str
# end
# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

#10 Bannerizer
# input -> string, output -> box 

# def print_in_box(str)
#   long_line = "+" + ('-' * (str.length + 2)) + "+"
#   short_line = "|" + (' ' * (str.length + 2)) + "|"
#   string_line = "| #{str} |"

#   puts long_line
#   puts short_line
#   puts string_line
#   puts short_line
#   puts long_line
# end
# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')


#11 Spin Me Around in Circles
# Answered a question on variable pointers. 