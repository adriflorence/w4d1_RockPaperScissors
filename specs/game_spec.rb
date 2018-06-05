require 'minitest/autorun'
require_relative '../models/game'

class TestRockPaperScissors < Minitest::Test

  def setup
      # ??
  end


  def test_game_result_rock_scissors
    @game = RockPaperScissors.new( 'rock', 'scissors' )
    assert_equal("Rock crushes scissors. You win!", @game.game_result() )
  end

  def test_game_result_rock_paper
    @game = RockPaperScissors.new( 'rock', 'paper' )
    assert_equal("Paper wraps rock. Computer wins.", @game.game_result() )
  end

  def test_game_result_rock_rock
    @game = RockPaperScissors.new( 'rock', 'rock' )
    assert_equal("Draw!", @game.game_result() )
  end



  def test_game_result_scissors_rock
    @game = RockPaperScissors.new( 'scissors', 'rock' )
    assert_equal("Rock crushes scissors. Computer wins.", @game.game_result() )
  end

  def test_game_result_scissors_paper
    @game = RockPaperScissors.new( 'scissors', 'paper' )
    assert_equal("Scissors cut paper. You win.", @game.game_result() )
  end

  def test_game_result_scissors_scissors
    @game = RockPaperScissors.new( 'scissors', 'scissors' )
    assert_equal("Draw!", @game.game_result() )
  end




  def test_game_result_paper_rock
    @game = RockPaperScissors.new( 'paper', 'rock' )
    assert_equal("Paper wraps rock. You win!", @game.game_result() )
  end

  def test_game_result_paper_scissors
    @game = RockPaperScissors.new( 'paper', 'scissors' )
    assert_equal("Scissors cut paper. Computer wins.", @game.game_result() )
  end

  def test_game_result_paper_paper
    @game = RockPaperScissors.new( 'paper', 'paper' )
    assert_equal("Draw!", @game.game_result() )
  end

end
