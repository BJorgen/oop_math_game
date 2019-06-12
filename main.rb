['./io_terminal', './player', './question', './turn', './game'].each(&method(:require))

game = Game.new(Player, Turn, Question, IO_terminal)
game.play
