
class Game
  def initialize
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')
    @current_player = @player1
  end


  def welcome_message
    puts "Welcome to testing if you actually paid attention in math class \n\n"
    game_loop
  end

  def switch_player
    if @current_player == @player1
     @current_player = @player2
    return
    end
    @current_player = @player1
  
  end

  def game_loop
    while @player1.lives > 0 && @player2.lives > 0  do 
      new_question = Question.new
      new_question.random_question
      user_answer = gets.chomp
      if new_question.evaluate_answer(user_answer)
        puts "You're smart! YOU!"
      else 
        puts "Dude common, it's math not your babe"
        @current_player.remove_life
        puts "You have #{@current_player.lives} lives remaining"
      end
      switch_player
      puts @current_player.player_name
      

    end
   
    puts "\n\n GAME OVER! your opponent won"
  end



end
