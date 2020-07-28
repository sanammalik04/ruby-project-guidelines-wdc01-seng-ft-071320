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

ActiveRecord::Schema.define(version: 2020_07_28_194826) do

  create_table "landmarks", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.string "address"
    t.string "best_season_to_visit"
    t.text "description"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.text "info"
  end

  create_table "rate_landmarks", force: :cascade do |t|
    t.integer "landmark_id"
    t.integer "trip_id"
    t.integer "rating"
  end

  create_table "rate_restaurants", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "trip_id"
    t.integer "rating"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cuisine"
    t.integer "location_id"
  end

  create_table "travellers", force: :cascade do |t|
    t.string "username"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "location_id"
    t.date "date"
    t.integer "rate_location"
  end

end
