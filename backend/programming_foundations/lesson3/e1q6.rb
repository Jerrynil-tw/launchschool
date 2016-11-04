famous_words = "seven years ago..."

# solution 1
famous_words.replace("Four score and seven years ago...") 

# solution 2
famous_words.sub!("seven years ago...", "Four score and seven years ago...")

# solution 3
famous_words.insert(0, "Four score and ") 

# solution 4
famous_words.prepend("Four score and ")

# solution 5
"Four score and " + famous_words

# solution 6
"Four score and " << famous_words