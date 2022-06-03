class PiecesController < ApplicationController
  get "/pieces" do
    Piece.All
  end
  
  post "/pieces" do
    Piece.create(params[:piece]).to_json
  end

  patch "/pieces/:id" do
    Piece.find(params[:id]).update(params[:patch]).to_json
  end

  delete "/pieces/:id" do
    Piece.destroy(params[:id]).to_json
  end
end