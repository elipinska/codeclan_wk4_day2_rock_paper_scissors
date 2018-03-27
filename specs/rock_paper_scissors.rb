require('minitest/autorun')
require_relative('../models/rock_paper_scissors')

class RPSGameTest < MiniTest::Test

  def test_rps__rock_wins_with_scissors
    game1 = RockPaperScissors.new('rock', 'scissors')
    game2 = RockPaperScissors.new('scissors', 'rock')

    assert_equal('Rock wins!', game1.duel())
    assert_equal('Rock wins!', game2.duel())
  end

  def test_rps__paper_wins_with_rock
    game1 = RockPaperScissors.new('rock', 'paper')
    game2 = RockPaperScissors.new('paper', 'rock')

    assert_equal('Paper wins!', game1.duel())
    assert_equal('Paper wins!', game2.duel())
  end

  def test_rps__scissors_win_with_paper
    game1 = RockPaperScissors.new('scissors', 'paper')
    game2 = RockPaperScissors.new('paper', 'scissors')

    assert_equal('Scissors win!', game1.duel())
    assert_equal('Scissors win!', game2.duel())
  end

  def test_rps__draw
    game1 = RockPaperScissors.new('scissors', 'scissors')
    game2 = RockPaperScissors.new('paper', 'paper')
    game3 = RockPaperScissors.new('rock', 'rock')

    assert_equal('It\'s a draw!', game1.duel())
    assert_equal('It\'s a draw!', game2.duel())
    assert_equal('It\'s a draw!', game3.duel())
  end

end
