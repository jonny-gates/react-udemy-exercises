puts "What's the time? (hour)"
puts ">"

hour = gets.chomp.to_i

# if the hour is 10

#                           true
#             true                      false
#       true        true          false         true
if (hour > 9 && hour < 12) || (hour > 14 && hour < 16)
  puts "The shop is open!!"
end
