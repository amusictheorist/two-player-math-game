class Question
  attr_reader :correct_answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
  end

  def display_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def is_correct?(answer)
    answer == @correct_answer
  end
end
