class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    @recepies = Recepie.all
    erb :index
  end

   get '/recepie' do
    @recepies = Recepie.all
      erb :index
    end

    get '/recepies/new' do
      erb :new
    end

end
