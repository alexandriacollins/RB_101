# Easy 6 - Small Problems
# -------------------------
#1 Cute angles
# input -> floating point number, output _. string rtepresent angle in degrees, minutes, seconds

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
# def dms(degrees_float)

# end
# p dms(30) #== %(30°00'00")
# p dms(76.73) #== %(76°43'48")
# p dms(254.6) #== %(254°36'00")
# p dms(93.034773) #== %(93°02'05")
# p dms(0) #== %(0°00'00")
# p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

#2 Delete vowels
# input-> string, output-> string

# VOWELS = %w(a e i o u A E I O U)

# def remove_vowels(arr_of_str)
#   new_arr = []
#   arr_of_str.each do |word|
#     new_word = ''
#     word.chars.each do |char| 
#       new_word << char if !VOWELS.include?(char)
#     end
#     new_arr << new_word
#   end
#   new_arr
# end
# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#3 Fibonacci Number Location by Length
# input -> integer, output -> integer
# Find first Fibonacci number that has number of digits specified as an argument

# def find_fibonacci_index_by_length(int)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= int

#     first = second
#     second = fibonacci
#   end

#   index
# end
# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

#4 Reversed Arrays (part1)
# input -> array, output -> array that is reversed input array

# def reverse!(arr)
#   half = arr.length / 2
#   first = 0
#   last = -1

#   until first == half 
#     arr[first], arr[last] = arr[last], arr[first]
#     first += 1
#     last -= 1
#   end
#   arr
# end
# list = [1,2,3,4]
# p result = reverse!(list)
# p result #== [4, 3, 2, 1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# p reverse!(list) == ["abc"]
# p list == ["abc"]

# list = []
# p reverse!(list) == []
# p list == []

#5 Reversed Arrays (part2)

# def reverse(arr)
#   new_arr = arr.each_with_object([])do |element, object|
#     object.unshift(element)
#   end
#   new_arr
# end
# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]  

#6 Combining Arrays
# input -> 2 arrays, output -> array 

# def merge(arr1, arr2)
#   new_arr = (arr1 + arr2).uniq
# end
# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#7 Halvsies
# input -> array, output -> two arrays in array

# def halvsies(arr)
#   halfway = (arr.length.to_f / 2).ceil
#   nested_arr = [arr[0..(halfway - 1)], arr[(halfway)..-1]]
# end
# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

#8 Find the Duplicate 
# input -> unordered array, output -> integer

# def find_dup(arr)
#   duplicate = nil
#   arr.each do |element|
#     if arr.count(element) == 2
#       duplicate = element
#     end
#   end
#   duplicate
# end
# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

#9 Does My List Include This?
# input -> array and search value, output -> boolean

# def include?(arr, search_value)
#   arr.each {|element| return true if element == search_value}
#   false
# end
# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

#10 Right Triangles
# input -> positive integer, output -> right triangle 

# def triangle(n)
#   counter = n
#   until counter <= 0
#     puts (' ' * (n - counter)) + ('*' * counter)
#     counter -= 1
#   end
# end
# triangle(5)
# triangle(9)
