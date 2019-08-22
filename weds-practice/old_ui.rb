puts "What do you want to do? [read|write|exit]"
puts ">"

action = gets.chomp

# if action == "read"
#   puts "Entering read mode"
# elsif action == "write"
#   puts "Entering wrtie mode"
# elsif action == "exit"
#   puts "Exiting..."
# else
#   puts "Wrong choice"
# end

case action
when "write"  then puts "Entering write mode"
when "read"   then puts "entering read mode"
when "exit"   then puts "exiting"
else
  puts "wrong choice"
end
