require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rock_paper_scissors')


get('/:option1/:option2') do
  game = RockPaperScissors.new(params[:option1], params[:option2])
  @result = game.duel()
  erb(:result)
end

get('/rules') do
  erb(:rules)
end
