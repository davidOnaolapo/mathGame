class Question
  attr_reader :question, :answer
  def initialize
    @question = self.generate_question_vars;
    @answer = self.generate_answer(@question);
  end
  
  def generate_question_vars
    [rand(20), rand(20)]
  end
  
  def generate_answer(to_add)
    to_add[0] + to_add[1]
  end
end
