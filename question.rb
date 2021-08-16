class Question
  attr_reader :question, :answer
  def initialize()
    @question = generate_question();
    @answer = generate_answer(@question);
  end 

end
