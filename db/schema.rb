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

ActiveRecord::Schema.define(version: 2019_10_06_055501) do

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.text "detail"
    t.string "state", null: false
    t.string "delivery_fee", null: false
    t.integer "price", null: false
    t.string "delivery_method", null: false
    t.string "delivery_date", null: false
    t.integer "buyer_id"
    t.integer "saler_id"
    t.integer "area_id", null: false
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_items_on_area_id"
    t.index ["brand_id"], name: "index_items_on_brand_id"
  end