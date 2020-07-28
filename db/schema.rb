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

ActiveRecord::Schema.define(version: 2020_07_28_184818) do

  create_table "travellers", force: :cascade do |t|
    t.string "username"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "location_id"
    t.date "date"
    t.integer "rate_location"
    t.integer "rate_restaurant_id"
    t.integer "rate_landmark_id"
  end

end
