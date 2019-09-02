require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  # Integer Validation
    # num == num.to_i.to_s -> Doesn't allow for 00
    /^\d+$/.match(num)
    # Integer(num) rescue false -> Need .to_i on num to allow 0
end

def float?(num)
  # Float Validation
    # num.to_f.to_s == num -> Doesn't allow for ex: 1. 
    /\d/.match(num) && /^\d*\.?\d*$/.match(num)
    # Float(num) rescue false
end

def operation_to_message(op)
  word = case op
         when '1'
          "Adding"
         when '2'
           "Subtracting"
         when '3'
           "Multiplying"
         when '4'
           "Dividing"
         end
  x = "A random line of code"

  word
end


prompt MESSAGES['welcome']

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt MESSAGES['valid_name']
  else
    break
  end
end

prompt MESSAGES['name'] + name + "!"

loop do # main loop
  num1 = nil
  loop do
    prompt MESSAGES['first_num']
    num1 = gets.chomp

    if number?(num1) || float?(num1)
      num1 = num1.to_f
      break
    else
      prompt MESSAGES['valid_num']
    end
  end

  num2 = nil
  loop do
    prompt MESSAGES['second_num']
    num2 = gets.chomp

    if number?(num2) || float?(num2)
      num2 = num2.to_f
      break
    else
      prompt MESSAGES['valid_num']
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1 for addition
    2 for subtraction
    3 for multiplication
    4 for division
  MSG
  prompt(operator_prompt)

  operator = nil
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['operator']
    end
  end

  prompt operation_to_message(operator) + MESSAGES['operation']

  result =  case operator
            when "1"
              num1 + num2
            when "2"
              num1 - num2
            when "3"
              num1 * num2
            when "4"
              num1 / num2
            end

  prompt MESSAGES['result'] + result.to_s

  prompt MESSAGES['another']
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt MESSAGES['thank_you']
