require 'pp'
require './question'
require './game'
require './player'


questionx = Question.new
playerx = Player.new("Silas")

playerx.process_answer(questionx, 5);
puts playerx.lives_left




