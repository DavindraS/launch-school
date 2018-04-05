greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

This should return the hash {a: 'hi there'}. informal_greeting points to the
'hi' string, manipulates it using << which changes it to 'hi there'.

greeting is pointing to the hash containing the string value, informal_greeting
points to the string value and modifies it.
