def prompt(message)
  puts ">> #{message}"
end

prompt "Welcome to the Mortgage/Car Loan Calculator App!"

loop do
  prompt "What is the loan amount(USD)?"
  loan = ''
  loop do
    loan = gets.chomp
    if loan.empty? || loan.to_f <= 0
      prompt "Number must be greater than 0. Try again."
    else
      break
    end
  end

  prompt "What is the APR(%)?"
  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f <= 0
      prompt "Percentage must be greater than 0. Try again."
    else
      break
    end
  end


  prompt "What is the loan duration(years)?"
  duration = ''
  loop do
    duration = gets.chomp
    if duration.empty? || duration.to_i <= 0
      prompt "Duration must be greater than 0. Try again."
    else
      break
    end
  end

  annual_interest = apr.to_f / 100
  monthly_interest = annual_interest / 12
  duration_months = duration.to_i * 12

  monthly_payment = loan.to_f * (monthly_interest / 
                           (1 - (1 + monthly_interest)**(-duration_months)))
  prompt "Your monthly payment is: $#{format('%.2f', monthly_payment)}"

  prompt "Do you want do another calculation?"
  answer = gets.chomp.downcase

  break unless answer.include?('y')
end

prompt "Thank you for using this application!"
prompt "Have a nice day!"
