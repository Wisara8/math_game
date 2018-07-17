class Question
  attr_accessor :result

  def initialize
    @int1 = rand(21)
    @int2 = rand(21)
    @result = @int1 + @int2
  end

  def print_question
    "What is #{@int1} + #{@int2}?"
  end
end