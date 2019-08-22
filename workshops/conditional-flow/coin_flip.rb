computer_coin = ["heads", "tails"].sample

puts "Heads or tails?"
user_choice = gets.chomp

result = computer_coin == user_choice ? "win" : "lose"

puts "You #{result}! The coin was #{computer_coin}."
