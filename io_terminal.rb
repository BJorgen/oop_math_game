class IO_terminal
  def self.get_players
    puts "What is the first player's name?"
    player1_name = gets.chomp
    puts "What is the second player's name?"
    player2_name = gets.chomp
    [player1_name, player2_name]
  end

  def self.get_answer(player, question)
      puts "----- NEW TURN -----"
      puts "#{player.name}: #{question}"
      input = gets.chomp.to_i
  end

  def self.output_assessment(player, correct)
    feedback = correct ? "YES! You are correct." : "Seriously? No!"
    puts "#{player.name}: #{feedback}"
  end

  def self.output_scores(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end
  
  def self.game_over(winner)
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end
