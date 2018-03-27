require('minitest/autorun')
require_relative('../models/rock_paper_scissors')

class RPSGameTest < MiniTest::Test

  def test_rps__rock_wins_with_scissors
    assert_equal('Player 1 wins by playing rock!', RockPaperScissors.duel('rock', 'scissors'))
    assert_equal('Player 2 wins by playing rock!', RockPaperScissors.duel('scissors', 'rock'))
  end

  def test_rps__paper_wins_with_rock
    assert_equal('Player 2 wins by playing paper!', RockPaperScissors.duel('rock', 'paper'))
    assert_equal('Player 1 wins by playing paper!', RockPaperScissors.duel('paper', 'rock'))
  end

  def test_rps__scissors_win_with_paper
    assert_equal('Player 1 wins by playing scissors!', RockPaperScissors.duel('scissors', 'paper'))
    assert_equal('Player 2 wins by playing scissors!', RockPaperScissors.duel('paper', 'scissors'))
  end

  def test_rps__draw
    assert_equal('It\'s a draw!', RockPaperScissors.duel('scissors', 'scissors'))
    assert_equal('It\'s a draw!', RockPaperScissors.duel('paper', 'paper'))
    assert_equal('It\'s a draw!', RockPaperScissors.duel('rock', 'rock'))
  end

end
