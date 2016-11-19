greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings #  => { :a => 'hi there' }


# solution 1
greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings #  => { :a => 'hi' }

# solution 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a] +' there'

puts informal_greeting  #  => "hi there"
puts greetings #  => { :a => 'hi' }

