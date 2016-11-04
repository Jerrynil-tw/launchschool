Kernel.puts("Welcome to the Mortgage Calculator!")

Kernel.puts("How much money do you want to loan?(in dollar)")

loan_amount = Kernel.gets().chomp().to_f()

Kernel.puts("How much is Annual Percentage Rate?(put in the number without %)")

annual_percentage_rate = Kernel.gets().chomp().to_f() / 100

monthly_interest_rate = annual_percentage_rate / 12

Kernel.puts("How long is the loan duration?(in years)")

yearly_loan_duration = Kernel.gets().chomp().to_f()

monthly_loan_duration = yearly_loan_duration * 12

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-monthly_loan_duration))

Kernel.puts("your monthly patment should be #{monthly_payment} dollars")