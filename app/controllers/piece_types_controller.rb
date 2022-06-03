class PieceTypesConroller < ApplicationController
  get "/piece_types/:id" do
    PieceType.find(params[:id]).to_json
  end

  post "/piece_types" do
    PieceType.create(params[:piece_type]).to_json
  end
end