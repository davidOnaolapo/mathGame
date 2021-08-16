require 'active_support/all'

def generate_question_vars
  return [rand(100), rand(100)]
end

def generate_answer(add)
  return (add[0] + add[1])
end

	

