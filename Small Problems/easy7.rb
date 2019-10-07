# Easy 7 - Small Problems
# -----------------------

#1 Combine Two lists
# input -> 2 arrays, output -> interleaving array

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end
# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#2 Lettercase Counter
# input -> string, output -> hash 

# UPPERCASE = ('A'..'Z').to_a
# LOWERCASE = ('a'..'z').to_a
# def letter_case_count(string)
#   hash = {
#     lowercase: 0,
#     uppercase: 0,
#     neither: 0
#   }
#   string.chars.each do |element|
#     if UPPERCASE.include?(element)
#       hash[:uppercase] += 1
#     elsif LOWERCASE.include?(element)
#       hash[:lowercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end
#   hash
# end
# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#3 Capitalize Words
# input -> string, output -> string

# def word_cap(string)
#   #string.split(' ').map(&:capitalize).join(' ')

#   # or

#   # new_str = []
#   # string.split(' ').each do |word|
#   #   word = word[0].upcase + word[1..-1].downcase
#   #   new_str << word
#   #   end
#   # new_str.join(' ')
# end
# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#4 Swap Case
# input -> string, output -> string

# UPCASE = ('A'..'Z').to_a
# LOWCASE = ('a'..'z').to_a
# def swapcase(string)
#   characters = string.chars.map do |letter|
#     if UPCASE.include?(letter)
#       letter.downcase
#     elsif LOWCASE.include?(letter)
#       letter.upcase
#     else
#       letter
#     end
#   end
#   characters.join
# end
# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#5 Staggered Caps (Part 1)
# input -> string, output -> new string

# def staggered_case(string, need_upper = true, non_alphabetic = true )
#   new_str = ''
#   string.chars.each do |char|
#     if non_alphabetic
#       new_str << char if char =~ /[^a-z]/i
#       next if char =~ /[^a-z]/i
#     end

#     if need_upper
#       new_str << char.upcase
#     else
#       new_str << char.downcase
#     end
#     need_upper = !need_upper
#   end
#   new_str
# end
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# p staggered_case('I Love Launch School!', non_alphabetic = false) #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#6 Staggered Caps (Part 2)
# Modified previous method

#7 Multiplicative Average
# input -> array, output -> string output

# def show_multiplicative_average(array)
#   average = array.map(&:to_f).reduce(:*) / array.size
#   puts "The result is " + format('%.03f', average)
# end
# show_multiplicative_average([3, 5])
# show_multiplicative_average([6])
# show_multiplicative_average([2, 5, 7, 11, 13, 17])

#8 Multiply Lists
# input -> 2 arrays, output -> array

def multiply_list(arr1, arr2)
  # new_arr = []
  # index = 0
  # until index == arr1.size
  #   new_arr << (arr1[index] * arr2[index])
  #   index += 1
  # end
  # new_arr
  arr1.zip(arr2).map {|pair| pair.inject(:*)} # second way
end
# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#9 Multiply All Pairs 
# input -> 2 arrays, output -> array

# def multiply_all_pairs(arr1, arr2)
#   new_arr = []
#   arr1.each do |num1|
#     arr2.each do |num2|
#       new_arr << [num1, num2]
#     end
#   end
#   new_arr.map {|pair| pair.inject(:*)}.sort
# end
# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#10 The End Is Near But Not Here
# input -> string, output -> string

# def penultimate(string)
#   string.split(' ')[-2]
# end
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'
