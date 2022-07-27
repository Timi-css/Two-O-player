# Game starts - intialize players
# Set player1 as current player
# Random question generated from question class 
# Ask current player the question
# Get and evaluate response from player 
# If question is wrong reduce player life 
# Check player life
# If player life is remaining switch to next player else if player life === 0 end game and declare other player as winner


class Player
  #responds to the math question given by class question
  attr_reader :lives, :player_name
  def initialize(name)
    @lives = 3
    @player_name = name
  end

  def remove_life
    @lives -= 1
  end
  
end
