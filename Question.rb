class Question
  # writes random math questions for the players
  def initialize
    @num = rand(20) 
    @num2 = rand(20)
    @answer = @num + @num2
  end
  
  def random_question
    puts ("What is the addition of #{@num} and #{@num2}? ")
  end
  
  def evaluate_answer(user_answer)
  #  puts @answer.class
  #  puts user_answer.class
    @answer == user_answer.to_i
  end
  
  
  end
  