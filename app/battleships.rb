require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/game'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  GAME = Game.new

  get '/' do
    erb :index
  end

   post '/create_player' do
  	player = Player.new
  	player.name = params[:player_name]
  	GAME.add_player(player) 
  	@name = GAME.player1.name
  	erb :place_ships
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
