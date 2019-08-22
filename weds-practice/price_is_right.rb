price_to_find = rand(1..5) # generate number between 1 and 5
choice = nil

until choice == price_to_find
  puts "how much do you think?"
  choice = gets.chomp.to_i
end

puts "You guessed it! The price is #{price_to_find}"
