# solution 1

def titleize!(words)
  title = words.split.each do |word|
    word.capitalize!
  end
  title.join(" ")
end

words = "the flintstones rock"

p titleize!(words)

# solution 2
words = "the flintstones rock"

p words.split.map{|word| word.capitalize!}.join(" ")

