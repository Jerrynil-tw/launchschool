# solution 1

words = "The Flintstones Rock!"

10.times do
  puts words.insert(0, " ")
end

# solution 2
10.times {|number| puts (" " * number) + "The Flintstones Rock!"}

# solution 3
(0..9).each {|number| puts (" " * number) + "The Flintstones Rock!"}

# solution 4
i = 0
loop do
  puts (" " * i) + "The Flintstones Rock!"
  i += 1
  break if i == 10
end

# solution 5

10.times{ puts words.prepend(" ")}