class Game
  attr_accessor :curr_player, :players_involved
  def initialize(players_involved)
    @players_involved = players_involved
    @curr_player = players_involved[0]
  end
end
