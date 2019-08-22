puts "how old are you?"
puts ">"

age = gets.chomp.to_i

condition = (age >= 18)

# if !condition
#   puts "You can't vote!"
# else
#   puts "You can vote!"
# end

puts "You can vote!" if condition

