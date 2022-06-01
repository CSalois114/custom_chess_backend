# require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/games" do
    Games.all.to_json
  end

  get "/games/:game_id" do
    Games.find(params[:game_id])
  end

  get "/games/:game_id/pieces" do
    Game.find(params[:game_id]).pieces
  end
  
  get "/games/:game_id/pieces/:piece_id" do
    Game.find(params[:game_id]).pieces.find(params[:piece_id])
  end

end
