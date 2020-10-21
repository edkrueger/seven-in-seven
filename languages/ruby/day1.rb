# Print "Hello, world"

puts 'Hello, world'

# Find the index of the start of the word "Ruby" in "Hello, Ruby"

super_string = 'Hello, Ruby'
sub_string = 'Ruby'

start_index = super_string.index('Ruby')
end_index = start_index + sub_string.length

puts "The super_string is #{super_string}"
puts "start_index: #{start_index}"
puts "end_index: #{end_index}"
puts "Verify the sub_string: #{super_string[start_index...end_index]}"

# Print your name 10 times
puts 'Edward ' * 10

# Print a sentance 10 times
i = 0
puts "This is sentance #{i = i + 1}" until i == 10

# Do it another way
i = 0
while i < 10
    i = i + 1
    puts "This is sentance #{i}"
end
