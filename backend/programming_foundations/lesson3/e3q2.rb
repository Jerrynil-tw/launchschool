flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# solution 1 塞字串
flintstones << "Dino"
p flintstones

# solution 2 選定位置塞
flintstones.insert(6, "Dino")
p flintstones

# solution 3 塞陣列
flintstones.concat(["Dino"])
p flintstones

# solution 4 塞字串
flintstones.push("Dino")
p flintstones