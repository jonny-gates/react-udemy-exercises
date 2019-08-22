computer_number = rand(5)

user_number = nil

until user_number == computer_number
  puts "can you guess?"
  user_number = gets.chomp.to_i
end

puts "You win!"
