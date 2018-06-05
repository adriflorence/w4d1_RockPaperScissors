class RockPaperScissors

  attr_accessor :second, :player_counter, :computer_counter

  def initialize(first, second = "")
    @first = first
    @second = second
    @player_counter = 0
    @computer_counter = 0
  end

  def game_result()

    if (@first == 'rock' && @second == 'scissors')
      @player_counter += 1
      return "Rock crushes scissors. You win!"
    elsif (@first == "rock" && @second == "paper")
      @computer_counter += 1
      return "Paper wraps rock. Computer wins."
    elsif (@first == "rock" && @second == "rock")
      return "Draw!"

    elsif (@first == "scissors" && @second == "rock")
      @computer_counter += 1
      return "Rock crushes scissors. Computer wins."
    elsif (@first == "scissors" && @second == "paper")
      @player_counter += 1
      return "Scissors cut paper. You win."
    elsif (@first == "scissors" && @second == "scissors")
      return "Draw!"

    elsif (@first == "paper" && @second == "rock")
      @player_counter += 1
      return "Paper wraps rock. You win!"
    elsif (@first == "paper" && @second == "scissors")
      @computer_counter += 1
      return "Scissors cut paper. Computer wins."
    elsif (@first == "paper" && @second == "paper")
      return "Draw!"
    end
    
 end

 def computer()
   options = ['rock', 'paper', 'scissors']
   @second = options.sample()
 end



end
