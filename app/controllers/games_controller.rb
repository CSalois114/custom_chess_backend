class GamesController < ApplicationController
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
end
