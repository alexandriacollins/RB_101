# ask the user for two numbers
# ask the user for an operation to perform 
# performs the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts "Welcome to Calculator!"
Kernel.puts ">>Choose two numbers separated by a space: "
numbers = Kernel.gets.chomp.split(" ")
numbers.map! {|num| num.to_i}

Kernel.puts ">>What operation do you want to do? +, -, *, or /?"
operation = Kernel.gets.chomp

result =  case operation
          when "+"
            numbers.sum
          when "-"
            numbers[0] - numbers[1]
          when "*"
            numbers[0] * numbers[1]
          when "/"
            numbers[0].to_f / numbers[1].to_f
          end

Kernel.puts "The result is #{result}"

