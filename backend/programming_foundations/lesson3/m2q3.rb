def add_name(string_name, array_name)
  string_name += "Jerry Nil"
  array_name << "Jerry Nil"
end

string_words = "Welcome! "
array_words = ["Welcome!"]

add_name(string_words, array_words)

puts "let's say #{string_words}"
puts "let's say #{array_words}"