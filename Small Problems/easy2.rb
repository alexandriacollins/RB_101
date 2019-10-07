# Easy 2 - Small Problems
#------------------------
#1 - How old is Teddy?
# input -> none, output -> puts string with randomly generated age

# puts "Give me a name: "
# name = gets.chomp
# name = 'Teddy' if name.empty?
# age = (20..200).to_a.sample
# puts "#{name} is #{age} years old!"

#2 - How big the room?
# Ask user for length and width of room, display the area of the room in square meters and square feet

# puts 'Enter the length of the room in feet: '
# length = gets.chomp.to_f
# puts 'Enter the width of the room in feet: '
# width = gets.chomp.to_f

# area_sq_f = (length * width).round(2)
# area_sq_i = (area_sq_f * 12).round(2)
# area_sq_c = (area_sq_i * 2.54).round(2)
# puts "The area of the room is #{area_sq_f} square feet (#{area_sq_i} square inches/#{area_sq_c} square centimeters)"

#3 - Tip calculator
# user input -> bill and tip percentage, output -> 2 lines of strings

# puts "What is the bill?"
# bill = gets.chomp.to_f
# puts "What is the tip percentage?"
# tip_percentage = gets.chomp.to_f / 100

# tip = (bill * tip_percentage).round(2)
# total_bill = (tip + bill).round(2)

# puts "The tip is $#{format('%#.02f', tip)}"
# puts "The total is $#{format('%#.02f', total_bill)}"

#4 - When will I Retire?
# Get user age and retirement age as input, output the 2 strings with year, year of retirement, and years to go

# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retirement_age = gets.chomp.to_i

# years_to_retirement = retirement_age - age
# current_year = Time.new.year 
# retirement_year = current_year + years_to_retirement

# puts "It's #{current_year}. You will retire in #{retirement_year}."
# puts "You have only #{years_to_retirement} years of work to go!"

#5 - Greeting a user
# Gets user input of name. Outputs Hello #{name} unless the name ends in a !. Then the response is in all caps.

# puts "What is your name?"
# name = gets.chomp!

# if name[-1] == '!'
#   name = name.chop!
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

#6 - Odd Numbers
# Print all odd numebers 1 to 99, includsive. All numbers should be printed on separate lines. 

# 1.upto(99) do |num|
#   next if num.even?
#   puts num
# end

#7 - Even Numbers
# Same as last exercise, but even instead

# 1.upto(99) do |num|
#   next if num.odd?
#   puts num
# end

#8 - Sum or Product of Consecutive Integers
# Ask user for integer greater than 0. Also ask to use sum or product. Reutrn sum of integers 1 to input. 

# puts ">> Please enter an integer greater than 0: "
# user_int = gets.chomp.to_i
# puts ">> Enter 's' to compute sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   total = (1..user_int).to_a.inject(:+)
#   puts "The sum of the integers between 1 and #{user_int} is #{total}"
# elsif operation == 'p'
#   total = (1..user_int).to_a.inject(:*)
#   puts "The product of the integers between 1 and #{user_int} is #{total}"
# else
#   puts "Oops. Unknown operation."
# end

#9 - String Assignment
# Asked a question on variable pointer and the effects of mutative methods
#10 - Mutation
# Asked another question on variable pointers. 