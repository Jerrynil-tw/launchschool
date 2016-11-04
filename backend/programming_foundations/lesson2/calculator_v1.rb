def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def valid_operation?(op)
  %w(1 2 3 4).include?(op)
end

def operation_describe(op)
  case op
  when "1"
    return "adding"
  when "2"
    return "subtracting"
  when "3"
    return "multiplying"
  when "4"
    return "dividing"
  end 
end

name = ""
loop do
  prompt("welcome to the calculator! Please put in your name")
  name = Kernel.gets().chomp()
  if name.empty?
    prompt("name can't be blank")
  else
    break
  end
end
prompt("Hello,#{name}!")

# asks user for number1
name = ""
loop do # main loop
  number1 = ""
  loop do
    prompt("please put in first number")
    number1 = gets().chomp().to_i()

    if valid_number?(number1)
      break
    else
      prompt("It's not a valid number")
    end
  end

    prompt("the first number is #{number1}")

  # asks user for number2
    number2 = ""
  loop do
    prompt("please put in number2")
    number2 = gets().chomp().to_i()
    if valid_number?(number2)
      break
    else
      prompt("It's not a valid number")
    end
  end

  prompt("the first number is #{number2}")

  # asks for the type of operation to perform(add, subtract, multiply or divide)
  answer = ""
  operation = ""
  loop do
    operation_prompt = <<-MSG
    which operation do you want to perform?
      1)add
      2)subtract
      3)multiply
      4)divide
    MSG

    prompt(operation_prompt)
    operation = gets().chomp().to_s()
    if valid_operation?(operation) == true
      break
    else
      prompt("please put in 1, 2, 3 or 4")
    end
  end
  # displays the result

  answer = case operation
           when "1"
             number1 + number2
           when "2"
             number1 - number2
           when "3"
             number1 * number2
           when "4"
             number1.to_f() / number2.to_f()
           end

  prompt("#{operation_describe(operation)} two numbers...")

  prompt("the answer is #{answer}")

  prompt("Do you want to keep calculate?(Y to calculate again)")
  answer = Kernel.gets().chomp().downcase()
  break unless answer.start_with?("y")
end

prompt("goodbye!")
