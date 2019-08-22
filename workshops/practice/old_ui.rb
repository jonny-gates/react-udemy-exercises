puts "What do you want to do? read|write|exit"

action = gets.chomp

# if action == 'read'
#   puts "Entering read mode"
# elsif action == 'write'
#   puts "Entering write mode"
# elsif action == 'exit'
#   puts "Goodbye!"
# else
#   puts "Error: doesn't exist"
# end

case action
when 'read'   then puts "Entering read mode"
when "write"  then puts "Entering write mode"
when "exit"   then puts "Goodbye"
else
  puts "Error: doesn't exist"
end
