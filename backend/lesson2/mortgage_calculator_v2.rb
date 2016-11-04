def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the Mortgage Calculator!")

loan_amount = ""
loop do
  loop do
    prompt("How much money do you want to loan?(in dollar)")
    loan_amount = Kernel.gets().chomp()
    if loan_amount.empty?() || loan_amount.to_f() <= 0
      prompt("the loan amount doesn't look right,please put in again")
    else
      break
    end
  end

  loan_amount = loan_amount.to_f()

  prompt("loan amount = #{format('%.2f', loan_amount)} dollars")

  annual_percentage_rate = ""
  loop do
    prompt("How much is Annual Percentage Rate?(put in the number without %)")
    annual_percentage_rate = Kernel.gets().chomp()
    if annual_percentage_rate.empty?() || annual_percentage_rate.to_f() <= 0
      prompt("Annual Percentage Rate doesn't look right,please put in again")
    else
      break
    end
  end

  monthly_interest_rate = annual_percentage_rate.to_f() / 12
  prompt("monthly interest rate = #{format('%.2f', monthly_interest_rate)}%")

  yearly_loan_duration = ""
  loop do
    prompt("How long is the loan duration?(in years)")
    yearly_loan_duration = Kernel.gets().chomp()
    if yearly_loan_duration.empty?() || yearly_loan_duration.to_f() <= 0
      prompt("the yearly loan duration doesn't look right,please put in again")
    else
      break
    end
  end

  monthly_loan_duration = yearly_loan_duration.to_f() * 12
  prompt("loan duration = #{format('%.2f', monthly_loan_duration)} months")

  monthly_payment = loan_amount * (monthly_interest_rate / 100 / (1 - (1 + monthly_interest_rate / 100)**-monthly_loan_duration))

  prompt("your monthly payment = #{format('%.2f', monthly_payment)}$")

  answer = ""
  loop do
    prompt("do you want to calculate again? put in 'y' if you do,or 'n' if not")
    answer = Kernel.gets().chomp().to_s()

    if answer.downcase().start_with?("y", "n")
      break
    else
      prompt("your type doesn't look right,please put in again")
    end
  end
  if answer.downcase().start_with?("y")
    next
  elsif answer.downcase().start_with?("n")
    break
  end
end

prompt("goodbye!")
