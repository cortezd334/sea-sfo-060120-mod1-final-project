# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_15_191304) do

  create_table "customer_lists", force: :cascade do |t|
    t.integer "customers_id"
    t.integer "wine_clubs_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "wine_preference", default: "none"
    t.string "origin_preference", default: "none"
  end

  create_table "wine_clubs", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "wine_lists", force: :cascade do |t|
    t.integer "wine_clubs_id"
    t.integer "wines_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "vintage"
    t.string "type"
    t.integer "price"
    t.string "origin"
  end

end
