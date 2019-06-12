class Game
  def initialize(player_engine, turn_engine, question_engine, io_engine)
    @player_engine = player_engine
    @turn_engine = turn_engine
    @question_engine = question_engine
    @io_engine = io_engine
    @winner = nil
  end
  def play
    player_names = @io_engine.get_players
    @player1 = @player_engine.new(player_names[0])
    @player2 = @player_engine.new(player_names[1])
    players = [@player1, @player2]
    @toggle = 0
    loop do
      player = players[@toggle % 2]
      # instantiate a new question and pass to turn with current player
      question = @question_engine.new()
      turn = @turn_engine.new(player, question,@io_engine)
      correct = turn.run
      unless correct 
        player.lose_life 
      end
      if player.lives == 0
        @winner = players[(@toggle + 1) % 2]
        @io_engine.game_over(@winner)
        break
      else
        @io_engine.output_scores(@player1, @player2) 
      end
      @toggle += 1
    end
  end
end
