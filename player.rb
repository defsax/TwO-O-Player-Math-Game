require './modules'

class Player
  #read and write lives
  attr_accessor :lives

  #only set name once
  attr_reader :name

  def initialize
    #player asks for name on creation
    Helpers.print_output('Please enter your name:')
    @name = Helpers.get_input
    self.lives = 3
  end

  def is_alive
    self.lives > 0
  end

  def reduce_lives
    self.lives -= 1
  end

end