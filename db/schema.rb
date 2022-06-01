# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_31_210712) do
  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.integer "piece_id"
    t.integer "dependent_on_move_id"
    t.boolean "can_kill"
    t.string "offset"
    t.index ["dependent_on_move_id"], name: "index_moves_on_dependent_on_move_id"
    t.index ["piece_id"], name: "index_moves_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.integer "game_id"
    t.string "name"
    t.string "front_img"
    t.string "back_img"
    t.string "starting_coords"
    t.string "coords"
    t.boolean "home_team"
    t.index ["game_id"], name: "index_pieces_on_game_id"
  end

  add_foreign_key "moves", "pieces"
  add_foreign_key "pieces", "games"
end
