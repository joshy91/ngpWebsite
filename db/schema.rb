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

ActiveRecord::Schema.define(version: 2019_12_03_182355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "stock_number"
    t.string "part_number"
    t.integer "num"
    t.integer "product_category"
    t.string "stock_description1"
    t.string "part_category"
    t.string "stock_description2"
    t.string "stock_description3"
    t.string "unit"
    t.string "pricing_method"
    t.float "level1_price_mult"
    t.float "level2_price_mult"
    t.float "level3_price_mult"
    t.float "level4_price_mult"
    t.float "level5_price_mult"
    t.float "special_mult"
    t.float "last_cost"
    t.float "quantity_on_hand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
