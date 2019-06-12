class Turn
  def initialize(player, question, io)
    @player = player
    @question = question
    @io = io
  end
  def run
    input = @io.get_answer(@player, @question)
    correct = input == @question.answer
    @io.output_assessment(@player, correct)
    correct
  end
end
