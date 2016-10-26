# asks user for number1

Kernel.puts("welcome to the calculator!")

Kernel.puts("please put in first number")

number1 = gets().chomp().to_i()

Kernel.puts("the first number is #{number1}")

# asks user for number2

Kernel.puts("please put in number2")

number2 = gets().chomp().to_i()

Kernel.puts("the first number is #{number2}")

# asks for the type of operation to perform(add, subtract, multiply or divide)

operation_prompt = <<-MSG
which operation do you want to perform?
  1)add
  2)subtract
  3)multiply
  4)divide
MSG

Kernel.puts(operation_prompt)

operation = gets().chomp().to_i()

# displays the result

case operation
when 1
  answer = number1 + number2
when 2
  answer = number1 - number2
when 3
  answer = number1 * number2
when 4
  answer = number1.to_f() / number2.to_f()
end

Kernel.puts("the answer is #{answer}")
