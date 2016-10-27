def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the Mortgage Calculator!")

loan_amount = ""
loop do
  loop do
    prompt("How much money do you want to loan?(in dollar)")
    loan_amount = Kernel.gets().chomp()
    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("the loan amount doesn't look right,please put in again")
    else
      break
    end
  end

  loan_amount = loan_amount.to_f()

  prompt("the loan amount is #{loan_amount} dollars")

  annual_percentage_rate = ""
  loop do
    prompt("How much is Annual Percentage Rate?(put in the number without %)")
    annual_percentage_rate = Kernel.gets().chomp()
    if annual_percentage_rate.empty?() || annual_percentage_rate.to_f() < 0
      prompt("the Annual Percentage Rate doesn't look right,please put in again")
    else
      break
    end
  end

  monthly_interest_rate = annual_percentage_rate.to_f() / 12
  prompt("the monthly interest rate is #{monthly_interest_rate} percent")

  yearly_loan_duration = ""
  loop do
    prompt("How long is the loan duration?(in years)")
    yearly_loan_duration = Kernel.gets().chomp()
    if yearly_loan_duration.empty?() || yearly_loan_duration.to_f() < 0
      prompt("the yearly loan duration doesn't look right,please put in again")
    else
      break
    end
  end

  monthly_loan_duration = yearly_loan_duration.to_f() * 12
  prompt("the monthly loan duration is #{monthly_loan_duration} months")

  monthly_payment = loan_amount * (monthly_interest_rate / 100 / (1 - (1 + monthly_interest_rate / 100)**-monthly_loan_duration))

  prompt("your monthly patment should be #{monthly_payment} dollars")

  prompt("do you want to calculate another mortgage? put in 'y' if you do")

  answer = Kernel.gets().chomp().to_s()

  break unless answer.downcase().start_with?("y")
end

prompt("goodbye!")
