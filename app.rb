require 'sinatra/base'
require './lib/game'
require './lib/player'

# require_relative 'player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    player_1 = Player.new(params[:first_name])
    player_2 = Player.new(params[:second_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $game.attack_player($game.player_2)
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
