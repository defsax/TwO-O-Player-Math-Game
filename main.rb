# main file - will require others

require './player'


puts "Please enter player 1 name:"
print "> "
name = $stdin.gets.chomp

player1 = Player.new(name)

puts "Please enter player 2 name:"
print "> "
name = $stdin.gets.chomp

player2 = Player.new(name)

puts player1

puts player1.name
puts player1.lives

puts player2.name
puts player2.lives