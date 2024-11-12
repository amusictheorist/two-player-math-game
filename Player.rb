class Player
  attr_accessor :lives, :score

  def initialize
    @lives = 3
    @score = 0
  end

  def update_state(correct)
    if correct
      @score += 1
    else
      @lives -= 1
    end
  end
end