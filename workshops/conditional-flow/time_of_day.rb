time = Time.now.hour

if time < 12
  puts "It's morning"
elsif time >= 18
  puts "It's evening"
elsif time >= 12
  puts "It's afternoon"
end
