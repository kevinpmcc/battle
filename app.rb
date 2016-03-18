require 'sinatra/base'
# require_relative 'player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    $dino_1_name = params[:first_name]
    $dino_2_name = params[:second_name]
    $player_1 = Player.new($dino_1_name)
    $player_2 = Player.new($dino_2_name)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $player_2.reduce_hp
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
