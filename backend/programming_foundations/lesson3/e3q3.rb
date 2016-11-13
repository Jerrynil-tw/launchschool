flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# solution 1
flintstones.concat(["Dino", "Hoppy"])
p flintstones

# solution 2
flintstones.push("Dino", "Hoppy")
p flintstones

# solution 3
flintstones << "Dino" << "Hoppy"
p flintstones