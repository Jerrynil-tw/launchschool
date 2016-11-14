def add_name(string_name, array_name)
  string_name += "Jerry Nil"
  array_name << "Jerry Nil"

  p string_name
  p array_name
end

string_words = "Welcome! "
array_words = ["Welcome!"]

add_name(string_words, array_words)
