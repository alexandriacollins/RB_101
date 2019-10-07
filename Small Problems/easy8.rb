# Easy 8 - Small Problems
# -----------------------

#1 Sum of Sums
# input -> array, output -> integer

# def sum_of_sums(arr)
#   counter = 0
#   sum = 0
#   until counter == arr.size
#     sum += arr[0..counter].sum
#     counter += 1
#   end
#   sum
# end
# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

#2 Madlibs

# puts "Enter a noun: "
# noun = gets.chomp
# puts "Enter a verb: "
# verb = gets.chomp
# puts "Enter a adjective: "
# adjective = gets.chomp
# puts "Enter a adverb: "
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

#3 Leading Substrings
# input -> string, output -> array (list of substrings)

# def substrings_at_start(str)
#   arr = []
#   str.chars.each_with_index do |element, index|
#     arr << str[0..index]
#   end
#   arr
# end
# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#4 All Substrings
# input -> string, output -> list of all substrings (array)

# def substrings(str)
#   arr = []
#   counter = 0
#   until counter == str.length
#     arr << substrings_at_start(str[counter..-1])
#     counter += 1
#   end
#   arr.flatten
# end
#p substrings('abcde')

#5 Palindromic Substrings
# input -> string, output -> array

# def palindromes(str)
#   substrings = substrings(str)
#   substrings.select {|element| element == element.reverse && element.length > 1}
# end
# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

#6 fizzbuzz

# def fizzbuzz_helper(num)
#   if num % 3 == 0 && num % 5 == 0
#     'FizzBuzz'
#   elsif num % 5 == 0
#     'Buzz'
#   elsif num % 3 == 0
#     'Fizz'
#   else
#     num
#   end
# end

# def fizzbuzz(num1, num2)
#   arr = []
#   num1.upto(num2) do |number|
#     arr << fizzbuzz_helper(number)
#   end
#   arr.join(', ')
# end
# p fizzbuzz(1, 15)

#7 Double Char (Part 1)

# def repeater(str)
#   str.chars.map {|char| char + char}.join
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

#8 Double Char (Part 2)
# input -> string, output -> new string

# CONSONANTS = %w(B C D F G H J K L M N P Q R S T V X Z W Y)
# def double_consonants(str)
#   new_str = ''
#   str.chars.each do |char|
#     new_str << char
#     new_str << char if CONSONANTS.include?(char.upcase)
#   end
#   new_str   
# end
# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

#9 Convert number to reversed array of digits
# input -> integer, output -> reversed integer

# def reversed_number(integer)
#   integer.to_s.reverse.to_i
# end
# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

#10 Get the Middle Character
#input -> string, output -> string

def center_of(string)
  half = string.chars.size / 2
  string.size.even? ?  string[half-1, 2] : string[half]
end
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
