NUM = 10

computers_number = rand(10)
puts "The computer has picked a number between 1 and #{NUM}"

guess_prompt = "Can you guess the number?"

puts computers_number

human_guess = 0

while human_guess != computers_number
    puts guess_prompt
    human_guess = gets().to_i
    puts "You guessed #{human_guess}"

    correct = human_guess <=> computers_number

    puts 'Your guess is too low' if correct == -1
    puts 'You guessed correctly' if correct == 0 
    puts 'Your guess is too high' if correct == 1 

end