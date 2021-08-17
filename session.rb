require './question'

class Session
  attr_accessor :game_over

  def initialize
    @game_over = false; 
  end

  def inquire
    puts "Player 1, enter your name"
    player1_name = gets.chomp

    puts "Player 2, enter your name"
    player2_name = gets.chomp
    # c = a.to_i + b.to_i
    [player1_name, player2_name]
  end

  def lets_play_round(player1, player2, game)
    game_over_check = lets_play(player1, player2, game);

    if game_over_check
      self.game_over = true;
      return
    end
      
    lets_play(player2, player1, game);
  end

  def lets_play(curr_player, other_player, game)
    game.curr_player = curr_player

    questionX = Question.new;

    puts "#{curr_player.name}: What does #{questionX.question[0]} plus #{questionX.question[1]} equals?"
    player_ans = gets.chomp
    player_ans = player_ans.to_i
    
    if questionX.answer != player_ans
      puts "Nope, really bro?"
      game.reduce_life;
    else 
      puts "Correct!"
    end

    puts "#{curr_player.name}: #{curr_player.lives_left}/3 vs #{other_player.name}: #{other_player.lives_left}/3"

    game_over_check = (curr_player.lives_left == 0)

    if game_over_check
      self.game_over = true;
    else 
      puts "--------NEW TURN---------"
    end  

    return game_over_check
  end

  def its_over(winner, loser)
    puts "#{winner.name} wins with a score of #{winner.lives_left}/3"
    puts "------------GAME OVER-------------"
    puts "Thanks for playing!"

  end






end
