require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    session['dino_1_name'] = params[:first_name]
    session['dino_2_name'] = params[:second_name]
    redirect '/play'
  end

  get '/play' do
    @dino_1_name = session['dino_1_name']
    @dino_2_name = session['dino_2_name']
    erb(:play)
  end

  get '/attack' do
    "You attacked Brian, the dinosaur"
  end 
  # start the server if ruby file executed directly
  run! if app_file == $0
end
