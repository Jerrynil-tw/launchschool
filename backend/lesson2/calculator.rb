# ask user for two numbers
# ask user for an operation to perform
# perform operations on the two numbers
# output result 

#answer = Kernel.gets()
#Kernel.puts(answer)

Kernel.puts("Welcome to calculator!")

Kernel.puts("What's the first number?")

number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")

number2 = Kernel.gets().chomp()

Kernel.puts("what operation do you want to perform? 1)add 2)subtract 3)multiply 4)divide")

operator = Kernel.gets().chomp()

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else operator == "4"
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("the result is #{result}")












