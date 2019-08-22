require_relative 'enemy.rb'
require_relative 'player.rb'
require_relative 'weapon.rb'

def generate_enemy
  enemy = Enemy.new
  enemy.name = ['Andy', 'Cam', 'Jonny'].sample
  enemy
end

p generate_enemy

lives = 3
player = Player.new

weapons = [Weapon.new({name: 'Sword', damage: 3, speed: 5}), Weapon.new({name: 'Spear', damage: 7, speed: 1}), Weapon.new({name: 'Bow and Arrow', damage: 5, speed: 3})]

puts "What's your name?"
player.name = gets.chomp

puts "OK, #{player.name}, you have #{lives} lives"
sleep 1
puts "First, you need to pick a weapon"

weapons.each_with_index do |weapon, index|
  puts "#{index + 1}. #{weapon.name}"
end

puts "Pick a number"
choice = gets.chomp.to_i - 1

player.first_weapon = weapons[choice]
puts "OK, #{player.name}, you now have a #{player.first_weapon.name}, do you want to know more about it? (y/n)"
choice = gets.chomp

if choice.upcase == 'Y'
  puts "Your #{player.first_weapon.name} does #{player.first_weapon.damage} damage and has #{player.first_weapon.speed} speed!"
else
  puts "Suit yourself"
end

enemy = generate_enemy

puts "#{player.name}, someone is here! You'll need to defend yourself. Lucky you have your #{player.first_weapon.name}!"

puts "It's #{enemy.name}!"




