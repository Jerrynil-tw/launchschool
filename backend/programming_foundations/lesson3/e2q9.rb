flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# solution 1
flintstones.map! { |name| name[0..2] }
p flintstones

# solution 2
flintstones.map! do |name|
  name[0,3]
end

p flintstones