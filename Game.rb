class Game
  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
    @current_player = @player_1
  end

  def start
    while @player_1.lives > 0 && @player_2.lives > 0
      question = Question.new
      puts "#{current_player_name}: #{question.display_question}"
      answer = player_answer.to_i

      if question.is_correct?(answer)
        puts "#{current_player_name}: YES! You are correct."
        @current_player.update_state(true)
      else
        puts "#{current_player_name}: Seriously? No!"
        @current_player.update_state(false)
      end

      display_score

      switch_current_player
    end

    end_game
  end

  def current_player_name
    @current_player == @player_1 ? "Player 1" : "Player 2"
  end

  def switch_current_player
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
  end

  def display_score
    puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3"
    puts "----- NEW TURN -----"
  end

  def end_game
    winner = @player_1.lives > 0 ? "Player 1" : "Player 2"
    puts "#{winner} wins with a score of #{@current_player.score}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def player_answer
    print "> "
    $stdin.gets.chomp.to_i
  end
end