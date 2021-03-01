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

# puts player1

# puts player1.name
# puts player1.lives

# puts player2.name
# puts player2.lives

currentPlayer = player1
# puts currentPlayer.name

# puts currentPlayer == player1
# puts currentPlayer == player2

game_over = false

while game_over != true
  puts "\n\n----- NEW TURN -----"
  x = (rand() * 20).to_i + 1
  y = (rand() * 20).to_i + 1
  correct_answer = x + y
  puts correct_answer

  puts "#{currentPlayer.name}: What is #{x} plus #{y}?"
  print "> "
  answer = $stdin.gets.chomp

  if answer.to_i != correct_answer
    puts "#{currentPlayer.name}: Incorrect!"
    #lose a life
    currentPlayer.lives -= 1
    # check lives status
  else 
    puts "#{currentPlayer.name}: Correct!"
    #nothing happens
  end

  if currentPlayer.lives == 0
    game_over = true
  end

  puts "\n------ SCORE -------"

  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"

  currentPlayer == player1 ? currentPlayer = player2 : currentPlayer = player1
end

puts "----- GAME OVER -----"
puts "Good bye!"