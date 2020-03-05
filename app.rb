require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
     erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    p $player_1
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hit_points = $player_1.hit_points
    @player_2_hit_points = $player_2.hit_points
    # @player_1_raise_damage = $player_1.raise_damage
    # @player_2_raise_damage = $player_2.raise_damage

    p @player_1_hit_points
    p @player_2_hit_points
    p @player_1_name
    p @player_2_name
    p @player_2
    p @player_1
    p "***"
    p "888"
    p @player_1_raise_damage
    p @player_2_raise_damage
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_raise_damage = $player_1
    @player_2_raise_damage = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
