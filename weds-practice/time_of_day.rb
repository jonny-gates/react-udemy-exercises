# puts "What hour?"
# puts ">"

# hour = gets.chomp.to_i

hour = Time.now.hour

if hour < 12
  puts "Good morning"
elsif hour > 18
  puts "Good evening - pub time!"
elsif hour > 12
  puts "Good afternoon"
else
  puts "Lunch time!"
end

