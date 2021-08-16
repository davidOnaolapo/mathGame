require 'pp'
require './question'
require './game'
require './player'
require './session'



# questionx = Question.new
# playerx = Player.new("Silas")

# playerx.process_answer(questionx, 5);
# puts playerx.lives_left

sessionX = Session.new
players = sessionX.inquire

player1 = Player.new(players[0])
player2 = Player.new(players[1])

sessionX.lets_play(player1, player2)





