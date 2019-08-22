puts "What time is it?(hour)?"
hour = gets.chomp.to_i

is_morning = ((hour >= 9) && (hour <= 12))
is_afternoon = ((hour >= 14) && (hour <= 18))

if is_morning || is_afternoon
  puts "It's open"
else
  puts "It's closed"
end
