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

ActiveRecord::Schema.define(version: 2022_06_15_035843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.string "description", null: false
    t.boolean "private", default: true, null: false
    t.integer "counts", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_items_on_shop_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "region", null: false
    t.string "prefecture", null: false
    t.string "area", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "access"
    t.string "introduction"
    t.integer "cancelable_days_before"
    t.boolean "private", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_shops_on_place_id"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "shops"
  add_foreign_key "shops", "places"
  add_foreign_key "shops", "users"
end
