require './player'
require './modules'
require './question'

class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
    @winner = @player1
    @question = Question.new
  end

  def output_score
    Helpers.print_output("\n------ SCORE -------\n#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3");
  end

  def set_winner
    @current_player == @player1 ? @winner = @player2 : @winner = @player1
  end

  def run
    game_over = false
    while game_over != true
      Helpers.print_output("\n\n----- NEW TURN -----")

      #generate random numbers and answer in question class
      numbers = @question.generate_question
      Helpers.print_output("#{@current_player.name}: What is #{numbers[0]} + #{numbers[1]}?")

      #prompt for answer
      answer = Helpers.get_input

      #check answer against correct answer
      if !@question.check_answer(answer)
        Helpers.print_output("#{@current_player.name}: Incorrect!")
        #lose a life
        @current_player.reduce_lives
      else 
        Helpers.print_output("#{@current_player.name}: Correct!")
        #nothing happens
      end

      # check lives status
      if !@current_player.is_alive
        game_over = true
        set_winner
      end

      output_score

      # switch current player
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
    end

    Helpers.print_output("\n----- GAME OVER -----\n#{@winner.name} wins with a score of #{@winner.lives}/3\nGood bye!")
  end
end