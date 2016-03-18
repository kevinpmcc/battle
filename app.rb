require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @dino_1_name = params[:first_name]
    @dino_2_name = params[:second_name]
    erb(:play)
  end

 
  # start the server if ruby file executed directly
  run! if app_file == $0
end
