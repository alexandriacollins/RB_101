# Medium 1 - Easy Problems 
# ------------------------

#1 Rotation (Part 1)
# input -> array, output -> array
# Original array should not be modified

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end
# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]   

#2 Rotation (Part 2)

# def rotate_rightmost_digits(number, n)
#   number = number.to_s.chars
#   number[-n..-1] = rotate_array(number[-n..-1])
#   number.join.to_i
# end
# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

#3 Rotation (Part 3)

# def max_rotation(num)
#   length = num.to_s.size 
#   until length == 1
#     num = rotate_rightmost_digits(num, length)
#     length -= 1
#   end
#   num
# end
# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

#4 1000 lights
# input -> total number (n) of switches, output -> string which says which lights are on after (n) repetitions

# def light_creation(number_of_lights)
#   (1..number_of_lights).to_a.to_h {|light| [light, "OFF"]}
# end

# def which_light_on(hash)
#   lights_on = hash.select {|key, value| value == "ON"}
#   lights_array = []
#   lights_on.each {|key, value| lights_array << key}
#   lights_array
# end

# def light(n)
#   light_hash = light_creation(n)

#   for number in (1..n)
#     light_hash.each do |key, value|
#       value == "OFF" ? light_hash[key] = "ON" : light_hash[key] = "OFF" if key % number == 0 
#     end
#   end

#   lights_on_array = which_light_on(light_hash).map(&:to_s).join(', ')
#   lights_off_array = light_hash.keys.select {|num| !lights_on_array.include?(num.to_s)}.map(&:to_s).join(', ')
#   "lights #{lights_off_array} are now off; #{lights_on_array} are on."
# end
# p light(5)


#5 Diamonds
#input-> integer, output -> 4 pointed diamond in integer x integer grid 

# def diamond(n)
 
# end
# diamond(5)

#6 Stack Machine Interpretation 

#7 Word to Digit
# input -> sentence string, output -> same string with any number words converted to digits

# DIGITS = {
#   'zero'=> 0, 'one'=> 1, 'two'=> 2, 'three'=> 3, 'four'=> 4, 
#   'five'=> 5, 'six'=> 6, 'seven'=> 7, 'eight'=> 8, 'nine'=> 9
# }
# def word_to_digit(string)
#   string = string.split(' ').map do |word|
#     if DIGITS.has_key?(word)
#       DIGITS[word]
#     else
#       word
#     end
#   end
#   string.join(' ')
# end
# p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#8 Fibonacci Numbers (Recursion)

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 2) + fibonacci(n - 1)
# end
# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

#9 Fibonacci Numbers (Procedural)

# def fibonacci(n)
#   first, last = [1,1]
#   3.upto(n) do
#     first, last = [last, first + last]
#   end

#   last
# end

#10 Fibonacci Numbers (Last Digit)

# def fibonacci_last(nth)
#   fib_num = fibonacci(nth)
#   fib_num.to_s.split('').last.to_i
# end
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

