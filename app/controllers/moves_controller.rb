class MovesController < ApplicationController
  get "/piece_types/:id/moves" do
    PieceType.find(params[:id]).moves.to_json
  end

  post "/moves" do
    Move.create(params[:move]).to_json
  end
end