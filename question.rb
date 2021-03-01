class Question
  def initialize
    @num_one
    @num_two
    @answer
  end

  def generate_question
    @num_one = (rand() * 20).to_i + 1
    @num_two = (rand() * 20).to_i + 1
    @answer = @num_one + @num_two
    return [@num_one, @num_two]
  end

  def check_answer(answer)
    answer.to_i == @answer
  end
end