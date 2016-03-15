require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player)
    $player_1 = $game.add_player_1(params[:player_1_name])
    $player_2 = $game.add_player_2(params[:player_2_name])
    redirect "/play"
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hit_points
    erb :play
  end

  get '/attacked' do
    @player_2_name = $player_2.name
    erb :attacked
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
