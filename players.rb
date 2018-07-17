class Player
  attr_accessor :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def status
    "#{name}: #{lives}/3"
  end

  def wrong_answer
    @lives -= 1
    puts "Boo!"
  end

  def right_answer
    puts "Yay!"
  end


end