beatles = ["john", "ringo", "seb"]      # array of 3 strings
#             0       1       2

# Read an element
puts beatles[1]

# Modify an element
beatles[2] = "george"

p beatles

# Append an element
beatles << "paul"
beatles.push("john")

p beatles

# Delete an element
beatles.delete("john")
beatles.delete_at(2)

p beatles

# CRUD

# Create: <<
# Read:   array[index]
# Update: array[index] =
# Delete: delete_at(index)

p beatles.length

beatles.each do |beatle|
  puts "#{beatle.capitalize} is a Beatle!"
end

puts beatles.join(", ")



