# Easy 3 - Small Problems
# ------------------------
#1 Searching 101
# Write program that gets 6 numbers as input and output message to describe if 6th number is among the first 5

# numbers_arr = []
# puts "Enter 1st number: "
# numbers_arr << gets.chomp.to_i
# puts "Enter 2nd number: "
# numbers_arr << gets.chomp.to_i
# puts "Enter 3rd number: "
# numbers_arr << gets.chomp.to_i
# puts "Enter 4th number: "
# numbers_arr << gets.chomp.to_i
# puts "Enter 5th number: "
# numbers_arr << gets.chomp.to_i
# puts "Enter 6th number: "
# sixth_num = gets.chomp.to_i

# if numbers_arr.include?(sixth_num)
#   puts "The number #{sixth_num} appears in #{numbers_arr}."
# else
#   puts "The number #{sixth_num} does not appear in #{numbers_arr}."
# end

#2 Arithmetic Integer
# Prompt user for 2 positive integers and return the results of the following operations on those 2 nums,
  # addition, subtraction, product, quotient, remainder, power

# first_num = nil
# second_num = nil
# puts ">> Enter the first number: "
# first_num = gets.chomp.to_f
# loop do
#   puts ">> Enter the second number: "
#   second_num = gets.chomp.to_f
#   if second_num == 0
#     puts "The second number can not be 0. Pick your number again."
#   else
#     break
#   end
# end

# puts ">> #{first_num} + #{second_num} = #{first_num + second_num}"
# puts ">> #{first_num} - #{second_num} = #{first_num - second_num}"
# puts ">> #{first_num} * #{second_num} = #{first_num * second_num}"
# puts ">> #{first_num} / #{second_num} = #{first_num / second_num}"
# puts ">> #{first_num} % #{second_num} = #{first_num % second_num}"
# puts ">> #{first_num} ** #{second_num} = #{first_num ** second_num}"

#3 Counting the Number of Characters
# Get input of a string of word/words and output the numbers of characters 

# puts "Please write word or multiple words: "
# string = gets.chomp
# num_of_chars = string.split.join.size
# puts "There are #{num_of_chars} characters in \"#{string}\"."

#4 Multiplying Two Numbers
# takes two args and multiples them together, returning the result

# def multiply(num1, num2)
#   num1 * num2
# end
#p multiply(5, 3) == 15

#5 Squaring an Argument
# Using multiply, compute the square of one argument 

# def power_of(num, power)
#   total = multiply(num, num)
#   return num if power == 1
#   return multiply(num, num) if power == 2
#   (power - 2).times do |_|
#     total *= num
#   end
#   total
# end
# p power_of(5, 3) #== 125
# p power_of(-8, 4) #== 4096

#6 Exclusive Or
# Input -> two args, out -> return true if exactly one of the args in truthy and false otherwise

# def xor?(arg1, arg2)
#   return true if (arg1 && !arg2) || (!arg1 && arg2)
#   false
# end
# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

#7 Odd Lists
# input -> array, output -> array that contains every other element of the array passed 

# def oddities(arr)
#   new_arr = []
#   for element in arr
#     new_arr << element if arr.index(element).even?
#   end
#   new_arr
# end
# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

#8 Palindromic Strings (Part 1)
# input -> string, output -> return boolean
# return true if arg is a palindrome

# def palindrome?(str_or_arr)
#   str_or_arr == str_or_arr.reverse
# end
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true
# p palindrome?(["abc", "def", "ghi", "def", "abc"]) == true

#9 Palindromic Strings (Part 2)
# input -> string, output -> return boolean
# return true if arg is palindrome. This time, should ignore cases and non alphanumeric characters 

# def real_palindrome?(str)
#   new_str = str.downcase.delete('^a-z0-9')
#   palindrome?(new_str)
# end
# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

#10 Palindromic Numbers
# input -> integer, output -> boolean

# def palindromic_number?(int)
#   int.to_s == int.to_s.reverse
# end
# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(050) #== true
