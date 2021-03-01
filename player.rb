class Player
  #read and write lives
  attr_accessor :lives
  
  #only set name once
  attr_reader :name

  def initialize(n)
    @name = n
    self.lives = 3
  end
end