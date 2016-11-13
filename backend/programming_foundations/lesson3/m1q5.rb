def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(2)

# Bonus 1 
# The purpose of the number % dividend == 0 is 
# to make sure the result of division is an integer number

# Bonus 2
# The purpose of the second-to-last line in the method is 
# to return value of the method when last statement executed