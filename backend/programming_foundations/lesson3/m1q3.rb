#Fixnum and string are different type and can't be add by "add" operator

# solution 1
puts "the value of 40 + 2 is " + (40 + 2).to_s

# solution 2
puts ("the value of 40 + 2 is ") << (40 + 2).to_s

# solution 3
puts "the value of 40 + 2 is #{40 + 2}"
