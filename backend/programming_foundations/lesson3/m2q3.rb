# solution 1

def no_tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"

  p a_string_param
  p an_array_param
end

my_string = "pumpkins "
my_array = ["pumpkins"]
no_tricky_method(my_string, my_array)

# solution 2

def no_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins "
my_array = ["pumpkins"]
my_string, my_array = no_tricky_method(my_string, my_array)

p my_string
p my_array

