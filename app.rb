require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do 
      erb :"/root"
    end

    get "/new" do 
      erb :"/pirates/new"
    end

    post "/pirates" do
      
      @pirate = Pirate.new(params["pirate"])
      @ships = []
      params["pirate"]["ships"].each do |attribute|
        Ship.new(attribute)
      end
      @ships = Ship.all
      # @ship_name_1 = params["pirate"]["ships"][0]
      # @ship_name_2 = params["pirate"]["ships"][1]
        # binding.pry
      erb :"/pirates/show"
    end

  end
end
