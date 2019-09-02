def prompt(message)
  puts ">> #{message}"
end

prompt "Welcome to the Mortgage/Car Loan Calculator App!"

prompt "What is the loan amount(USD)?"
loan = gets.chomp.to_i

prompt "What is the APR(%)?"
apr = gets.chomp.to_f / 100 # converts to percentage
month_interest = apr / 12

prompt "What is the loan duration(years)?"
duration = gets.chomp.to_i * 12 # converts to months

m = loan * (month_interest / (1 - (1 + month_interest)**(-duration)))

prompt "Your monthly payment would be: $#{m.round(2)}"
