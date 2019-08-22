beatles = ["john", "ringo", "seb"]
# index       0       1       2

puts beatles[4]
puts beatles[2] = "paul"
# beatles << "george"
# beatles.push('george')
beatles.insert(2, 'george')
puts beatles

# delete an element
beatles.delete("john")

beatles.delete_at(2)

# CRUD

# Create  <<
# Read    [index]
# Update  [index] =
# delete  delete_at(index)

# beatles.each do |beatle|
#   puts "#{beatle} is in the beatles"
# end

for beatle in beatles
  puts beatle
end
