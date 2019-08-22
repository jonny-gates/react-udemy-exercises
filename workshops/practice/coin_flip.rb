computer_choice = ["heads", "tails"].sample

puts "Heads or Tails?"
player_choice = gets.chomp

result = computer_choice == player_choice ? "win" : "lose"

# if computer_choice == player_choice
#   result = "win"
# else
#   result = "lose"
# end

# condition ? code_if_truthy : code_if_falsy


puts "You #{result}!"
