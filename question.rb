require './helpers'

class Question
  attr_reader :question, :answer
  def initialize
    @question = generate_question_vars;
    @answer = generate_answer(@question);
  end 

end
