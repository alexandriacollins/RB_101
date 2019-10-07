# Easy 1 - Small Problems 
#------------------------
#1 - Repeat Yourself
# input -> 2 arguments(string and postive integer), output -> string printed as many times as integer

# def repeat(str, int)
#   int.times { puts str }
# end
# repeat('Hello', 3)

#2 - Odd
# input -> 1 integer argument, output -> returns true if number's absolute value is odd 

# def is_odd?(int)
#   int = -int if int < 0
#   int.remainder(2) != 0 
# end
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

#3 - List of Digits
# input -> one positive integer, output -> returns a list of the digits
# def digit_list(int)
#   int.to_s.split('').map(&:to_i)
# end
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

#4 How Many?
# input -> array, output -> multiple strings with instances of element in array 

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck', 'suv',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]
# def count_occurrences(arr)
#   instances_hash = {}
#   arr = arr.map(&:downcase)
#   arr.each do |element|
#     instances_hash[element] = arr.count(element)
#   end

#   instances_hash.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end
# count_occurrences(vehicles)

#5 Reverse It (part 1)
# input-> string, out -> string in reverse order

# def reverse_sentence(str)
#   str.split(' ').reverse.join(' ')
# end
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

#6 Reverse It (part 2)
# input-> one argument, a string containing one or more words, output -> given string with words that contain 5 or more characters reversed

# def reverse_words(str)
#   new_str = str.split.map do |word|
#     if word.size >= 5
#       word.reverse
#     else
#       word
#     end
#   end
#   new_str.join(' ')
# end
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

#7 Stringy Strings
# input -> takes one positive integer, output -> string of alternating 1s and 0s, starting with 1. Length of string should match integer. 

# def stringy(int, start_num = 1)
#   numbers = []
#   int.times do |index|
#     number = index.even? ? 1 : 0 unless start_num == 1
#     number = index.even? ? 0 : 1 if start_num == 0
#     numbers << number
#   end
#   numbers.join
# end
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(7, 0)

#8 Array Average 
# input -> arr of integers, output -> average of all numbers in array 

# def average(arr)
#   average_int = 0
#   arr.each do |num|
#     average_int += num
#   end
#   average_int.to_f / arr.size
# end
# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) #== 40

#9 Sum of Digits 
# input -> positive integer, output -> return sum of digits

# def sum(int)
#   int.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

#10 What's my Bonus?
# input -> two args(positive int, boolean), output -> integer that will represent bonus

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000