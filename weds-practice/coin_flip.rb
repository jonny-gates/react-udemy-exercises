puts "heads or tails?"
puts ">"

player_choice = gets.chomp

computer_choice = ["heads", "tails"].sample

# if player_choice == computer_choice
#   result = "won"
# else
#   result = "lost"
# end

# condition ? code_if_truthy : code_if_falsy
result = player_choice == computer_choice ? "won" : "lost"

puts "You #{result}! The coin was #{computer_choice}"
