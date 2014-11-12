require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/cell'

class BattleShips < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/create_player' do
  	player = Player.new
  	player.name = params[:player_name]
  	player.board = Board.new(Cell)
  	if GAME.ready?
  		redirect '/play'
  	else 
  	
  	erb :waiting
  	end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
