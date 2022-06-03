# require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/games" do
    Game.all.order(updated_at: :desc).to_json
  end

  get "/games/new" do
    Game.create(name: "Unnamed").to_json
  end

  get "/games/:id/game_obj" do
    Game.find(params[:id]).to_json(include: [piece_types: { include: :moves }, pieces: { include: :moves } ])
  end

  patch "/games/:id" do
    Game.find(params[:id]).update(params[:patch]).to_json
  end




  post "/pieces" do
    Piece.create(params[:piece]).to_json
  end

  delete "/pieces/:piece_id" do
    Piece.destroy(params[:piece_id]).to_json
  end




  get "/piece_types/:id" do
    PieceType.find(params[:id]).to_json
  end

  post "/piece_types" do
    PieceType.create(params[:piece_type]).to_json
  end
  


  get "/piece_types/:id/moves" do
    PieceType.find(params[:id]).moves.to_json
  end

  post "/moves" do
    Move.create(params[:move]).to_json
  end
  
end
