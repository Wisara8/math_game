require "./players"
require "./questions"
# require "turn"
# require "game"

turn_counter = 0
player1 = Player.new("player1")
player2 = Player.new("player2")

puts "Begin!"
# puts player1
# puts player2

while player1.lives > 0 && player2.lives > 0
  question = Question.new

  if turn_counter % 2 == 0
    player = player1
  else
    player = player2
  end

  puts "#{player.name} #{question.print_question}"
  ans = gets.chomp.to_i

  if ans == question.result
    player.right_answer
  else
    player.wrong_answer
    puts "answer: #{question.result}"
  end

  if player1.lives == 0
    puts "#{player2.name} wins"
    puts "#{player2.lives}/3"
    puts "--Game Over--"
  elsif player2.lives == 0
    puts "#{player1.name} wins"
    puts "#{player1.lives}/3"
    puts "--Game Over--"

  else
    puts "Player 1 #{player1.status} vs Player 2 #{player2.status}"
    puts "--New Turn--"
  end
  turn_counter += 1
end
