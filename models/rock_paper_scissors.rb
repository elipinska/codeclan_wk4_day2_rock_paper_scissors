class RockPaperScissors

  def self.duel(player1, player2)

    win = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }

    if win[player1] == player2
      return "Player 1 wins by playing #{player1}!"
    elsif player1 == player2
      return "It's a draw!"
    else
      return "Player 2 wins by playing #{player2}!"
    end

  end

end
