require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/pirates' do 
      erb :"pirates/show"
    end

    get '/new' do #this line is just for us
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      @ship1 = Ship.new(params["pirate"]["ships"][0])
      @ship2 = Ship.new(params["pirate"]["ships"][1])

      erb :'pirates/show'
      # binding.pry
    end



  end
end
