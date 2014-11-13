require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/cell'

class BattleShips < Sinatra::Base
enable :sessions
  set :views, Proc.new { File.join(root, "..", "views") }
  GAME = Game.new

  get '/' do
    erb :index
  end

  get '/test' do
    erb :test
  end

  post '/create_player' do
  	player = Player.new
  	@player_name = params[:player_name]
  	player.board = Board.new(Cell)
  	if GAME.ready?
  		redirect '/play'
  	else 
  	erb :place_ships
  	end
  end

  post '/place_ship' do

  	erb :place_ships
  end

  get '/placing_ships' do
  	erb :place_ships
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
