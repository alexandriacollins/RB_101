# Easy 4 - Small Problems
# -------------------------
#1 Short Long SHort
# input -> 2 strings as arguments, output -> 1 string
# determine longest of 2 strings, return results of concatneating shorter string, long stringer and short string again

# def short_long_short(str1, str2)
#   if str1.size > str2.size
#     str2 + str1 + str2
#   else
#     str1 + str2 + str1
#   end
# end
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

#2 What Century is That?
# input -> year(integer), output -> string(century)
# new centuries start with 01

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#3 Leap Years(Part 1)
# input-> integer(year), output-> boolean

# def leap_year?(int)
#   if int < 1752 && int % 4 == 0
#     true
#   elsif int % 4 == 0 && int % 100 != 0
#    true 
#   elsif int % 100 == 0 && int % 400 != 0
#     false
#   else
#     int % 400 == 0
#   end
# end
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

#4 Leap Years(Part 2)
# Solved problem by modifying the answer to question 3

#5 Multiples of 3 and 5
# input -> interger, output -> integer
# Seach for all multiples of 3 or 5 between 1 and the integer given as an arg, then compute the sum

# def multisum(int)
#   (1..int).to_a.select { |num | num % 3 == 0 || num % 5 == 0}.inject(:+)
# end
# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

#6 Running Totals
# input -> array of numbers, output -> array of numbers
# returned array is running total of current and previous numbers in the input array

# def running_total(arr)
#   new_arr = []
#   arr.each_with_index do |_, index|
#     new_arr << arr[0..index].sum 
#   end
#   new_arr
# end
# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

#7 Convert a String to a Number!
# input -> string, output -> integer
# can't use string#to_i or Integer()

# STR_TO_INT = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6, 
#   '7' => 7,
#   '8' => 8,
#   '9' => 9
# }
# def string_to_integer(str)
#   str = str.delete('^0-9')
#   int = 0
#   multiplier = 10
#   str_size = str.size
#   str.chars.map {|char| STR_TO_INT[char]}.each do |num|
#     int += num * multiplier**(str_size - 1)
#     str_size -= 1
#   end
#   int
# end
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# Futher Exploration
# def hexadecimal_to_integer(hex_num)
#   hex_num.hex
# end
# p hexadecimal_to_integer('4D9f') == 19871

#8 Convert a String to a Signed Number!

# def string_to_signed_integer(str)
#   if str[0] == '-'
#     int = string_to_integer(str)
#     int = -int
#   else
#     string_to_integer(str)
#   end
# end
# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

#9 Convert a Number to a String!

# def integer_to_string(int)
#   arr_of_ints = int.abs.digits.reverse
#   arr_of_ints.map {|int| STR_TO_INT.key(int)}.join
# end
# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

#10 Convert a Signed Number to a String!

# def signed_integer_to_string(int)
#   return '0' if int == 0
#   if int != int.abs
#     '-' + (integer_to_string(int))
#   else
#     '+' + (integer_to_string(int))
#   end
# end
# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

