require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('models/*')

get '/' do
  erb(:home)
end

get '/game' do
  erb(:game)
end


get '/game/rock' do
  game = RockPaperScissors.new("rock")
  game.computer()
  @image = "/img/rock.png"
  @winner = game.game_result()
  @player_counter = game.player_counter.to_i
  @computer_counter = game.computer_counter.to_i
  @computer_image = "/img/#{game.second}.png"
  erb(:result)
end

get '/game/paper' do
  game = RockPaperScissors.new("paper")
  game.computer()
  @image = "/img/paper.png"
  @winner = game.game_result()
  @player_counter = game.player_counter.to_i
  @computer_counter = game.computer_counter.to_i
  @computer_image = "/img/#{game.second}.png"
  erb(:result)
end

get '/game/scissors' do
  game = RockPaperScissors.new("scissors")
  game.computer()
  @image = "/img/scissors.png"
  @winner = game.game_result()
  @player_counter = game.player_counter.to_i
  @computer_counter = game.computer_counter.to_i
  @computer_image = "/img/#{game.second}.png"
  erb(:result)
end
