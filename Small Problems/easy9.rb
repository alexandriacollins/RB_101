# Easy 9 - Small Problems
# -----------------------

#1 Welcome Stranger
# input -> array and hash, output -> string

# def greetings(arr, hash)
#   name = arr.join(' ')
#   job_title = "#{hash[:title]} #{hash[:occupation]}"
#   puts "=> Hello, #{name}! Nice to have a #{job_title} around."
# end
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

#2 Double Doubles
# input -> integer, output -> integer

# def twice(num)
#   return num * 2 if num.to_s.length == 1

#   half = num.to_s.length / 2 
#   return num if num.to_s[0..(half -1)] == num.to_s[half..-1]
#   num * 2 
# end
# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

#3 Always Return Negative

# def negative(num)
#   return num if num == 0

#   if num > 0 
#     -num
#   else
#     num
#   end
# end
# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0

#4 Counting Up
# input -> integer, output -> array

# def sequence(num)
#   if num >= 1
#     (1..num).to_a
#   else
#     (num..1).to_a.reverse
#   end
# end
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

#5 Uppercase Check
# input -> string, output -> boolean

# UPPERCASE = ('A'..'Z').to_a
# def uppercase?(str)
#   str = str.delete('^A-Za-z')
#   str.chars.each {|char| return false if !UPPERCASE.include?(char)}
#   return true
# end
# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

#6 How long are you?
# input-> string, output-> array of strings

# def word_lengths(str)
#   array = []
#   str.split(' ').each do |word|
#     array << "#{word} #{word.length}"
#   end
#   array
# end
# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]
# p word_lengths("") == []

#7 Name Swapping

# def swap_name(string)
#   name = string.split
#   "#{name[1]}, #{name[0]}"
# end
# p swap_name('Joe Roberts') == 'Roberts, Joe'

#8 Sequence Count
# input -> two integer, output -> array

# def sequence(num1, num2)
#   array = []
#   num = num2
#   num1.times do |_|
#     array << num
#     num += num2
#   end
#   array
# end
# p sequence(5, 1) #== [1, 2, 3, 4, 5]
# p sequence(4, -7) #== [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

#9 Grade book
# input-> 3 integers, output -> string

# def get_grade(g1, g2, g3)
#   average = (g1 + g2 + g3) / 3.0
#   case average
#   when 90..100 then 'A'
#   when 80..89 then 'B'
#   when 70..79 then 'C'
#   when 60..69 then 'D'
#   else             'F'
#   end
# end
# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

#10 Grocery List
# input -> nested array. output -> array

# def buy_fruit(nested_array)
#   new_array = []
#   nested_array.each do |array|
#     array[1].times {new_array << array[0]}
#   end
#   new_array
# end
# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
  