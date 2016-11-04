ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# solution 1
ages.has_key?("Spot")

# solution 2
ages.key?("Spot")

# solution 3
ages.include?("Spot")

# solution 4
ages.member?("Spot")