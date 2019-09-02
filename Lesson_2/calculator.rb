def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '+'
    'Adding'
  when '-'
    "Subtracting"
  when '*'
    "Multiplying"
  when '/'
    "Dividing"
  end # if we needed more after, we would need return/puts on when condition results
end
prompt("Welcome to Calculator! Enter your name: ")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  num1 = nil
  loop do
    prompt "What's the first number?"
    num1 = gets.chomp

    if valid_number?(num1)
      num1 = num1.to_i
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  num2 = nil
  loop do
    prompt "What's the second number?"
    num2 = gets.chomp

    if valid_number?(num2)
      num2 = num2.to_i
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    + for addition
    - for subtraction
    * for multiplication
    / for division
  MSG
  prompt(operator_prompt)
  operator = nil
  loop do
    operator = gets.chomp

    if %w(+ - * /).include?(operator)
      break
    else
      prompt "Must choose +, -, *, or /"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result =  case operator
            when "+"
              num1 + num2
            when "-"
              num1 - num2
            when "*"
              num1 * num2
            when "/"
              num1.to_f / num2.to_f
  end

  prompt "The result is #{result}"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thank you for using the calculator. Good bye!" 


