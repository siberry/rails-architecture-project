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

ActiveRecord::Schema.define(version: 2019_04_16_215551) do

  create_table "architects", force: :cascade do |t|
    t.string "name"
  end

  create_table "building_elements", force: :cascade do |t|
    t.integer "building_id"
    t.integer "element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_elements_on_building_id"
    t.index ["element_id"], name: "index_building_elements_on_element_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.integer "architect_id"
    t.string "name"
    t.integer "location_id"
    t.string "imgurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "continent"
  end

  create_table "user_buildings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "building_id"
    t.index ["building_id"], name: "index_user_buildings_on_building_id"
    t.index ["user_id"], name: "index_user_buildings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
