class Player
  MAX_YEARS = 3
  attr_accessor :name, :lives_left

  def initialize(name)
    @name = name
    @lives_left = MAX_YEARS;
  end
  
  def process_answer(question_obj, user_answer) 
    if (question_obj.answer != user_answer)
      self.lives_left -= 1 
    end
  end
end
