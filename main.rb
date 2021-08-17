require 'pp'
require './question'
require './game'
require './player'
require './session'



# questionx = Question.new
# playerx = Player.new("Silas")

# playerx.process_answer(questionx, 5)
# puts playerx.lives_left

sessionX = Session.new
players = sessionX.inquire

player1 = Player.new(players[0])
player2 = Player.new(players[1])

gameX = Game.new(player1);

while (!sessionX.game_over) do
  sessionX.lets_play_round(player1, player2, gameX)
end

if(player1.lives_left == 0)
  sessionX.its_over(player2, player1)
else
  sessionX.its_over(player1, player2)
end






