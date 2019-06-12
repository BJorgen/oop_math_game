class Question
  attr_reader :answer, :string
  def initialize()
    @number1 = rand(1...21)
    @number2 = rand(1...21)
    @answer = @number1 + @number2
  end

  def to_s
    "What does #{@number1} plus #{@number2} equal?"
  end
end
