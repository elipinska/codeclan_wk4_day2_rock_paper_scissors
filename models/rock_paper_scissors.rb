class RockPaperScissors

  def initialize(input_option1, input_option2)
    @option1 = input_option1
    @option2 = input_option2
  end

  def duel()
    if (@option1 == 'rock' || @option2 == 'rock') && (@option1 == 'paper' || @option2 == 'paper')
      return "Paper wins!"
    elsif (@option1 == 'paper' || @option2 == 'paper') && (@option1 == 'scissors' || @option2 == 'scissors')
      return "Scissors win!"
    elsif (@option1 == 'rock' || @option2 == 'rock') && (@option1 == 'scissors' || @option2 == 'scissors')
      return "Rock wins!"
    else
      return "It's a draw!"
    end
  end

end
