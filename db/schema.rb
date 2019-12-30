# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_30_201039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boardgames", force: :cascade do |t|
    t.string "name"
    t.integer "year_published"
    t.integer "min_players"
    t.integer "max_players"
    t.integer "min_playtime"
    t.integer "max_playtime"
    t.integer "min_age"
    t.string "description"
    t.string "image"
    t.string "primary_publisher"
    t.string "designers"
    t.string "average_rating"
    t.string "msrp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_boardgames", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "boardgame_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boardgame_id"], name: "index_user_boardgames_on_boardgame_id"
    t.index ["user_id"], name: "index_user_boardgames_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_boardgames", "boardgames"
  add_foreign_key "user_boardgames", "users"
end
