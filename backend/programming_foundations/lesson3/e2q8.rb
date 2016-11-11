flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# solution 1
flintstones.each do |name|
  p flintstones.index(name) if name.start_with?("Be")
end

# solution 2

p flintstones.index {|name| name[0..1] == "Be"}