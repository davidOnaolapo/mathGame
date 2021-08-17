class Player
  MAX_YEARS = 3
  attr_accessor :name, :lives_left

  def initialize(name)
    @name = name
    @lives_left = MAX_YEARS;
  end
end
