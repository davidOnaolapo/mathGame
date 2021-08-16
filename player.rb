class Player
  MAX_YEARS = 3
  attr_accessor :name

  def initialize(name)
    @name = name
    @lives_left = MAX_YEARS;
    @total_score = 0;
  end
  
  
end
