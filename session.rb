class Session
  FIRST_ROUND = 1
  attr_accessor :round, :game_over

  def initialize
    @round = FIRST_ROUND
    @game_over = false;
  end

  def inquire
    puts "Player 1, enter your name"
    player1_name = gets.chomp

    puts "Player 2, enter your name"
    player2_name = gets.chomp
    # c = a.to_i + b.to_i
    puts player1_name
  end

  def lets_play(player1, player2)
    puts player1.name
  end







end
