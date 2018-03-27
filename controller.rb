require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rock_paper_scissors')


get('/:option1/:option2') do
  @result = RockPaperScissors.duel(params[:option1], params[:option2])
  erb(:result)
end

get('/rules') do
  erb(:rules)
end
