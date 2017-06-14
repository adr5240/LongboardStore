# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170612144215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bearings", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "brand",       null: false
    t.string   "material",    null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "price",       null: false
    t.string   "rating",      null: false
  end

  add_index "bearings", ["brand"], name: "index_bearings_on_brand", using: :btree
  add_index "bearings", ["material"], name: "index_bearings_on_material", using: :btree
  add_index "bearings", ["price"], name: "index_bearings_on_price", using: :btree
  add_index "bearings", ["rating"], name: "index_bearings_on_rating", using: :btree

  create_table "decks", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "brand",       null: false
    t.string   "description", null: false
    t.string   "concave",     null: false
    t.string   "flex",        null: false
    t.string   "mount",       null: false
    t.string   "traction",    null: false
    t.string   "shape",       null: false
    t.integer  "price",       null: false
    t.float    "length",      null: false
    t.float    "width",       null: false
    t.float    "wheelbase",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "decks", ["brand"], name: "index_decks_on_brand", using: :btree
  add_index "decks", ["concave"], name: "index_decks_on_concave", using: :btree
  add_index "decks", ["flex"], name: "index_decks_on_flex", using: :btree
  add_index "decks", ["length"], name: "index_decks_on_length", using: :btree
  add_index "decks", ["mount"], name: "index_decks_on_mount", using: :btree
  add_index "decks", ["name"], name: "index_decks_on_name", using: :btree
  add_index "decks", ["price"], name: "index_decks_on_price", using: :btree
  add_index "decks", ["shape"], name: "index_decks_on_shape", using: :btree
  add_index "decks", ["traction"], name: "index_decks_on_traction", using: :btree
  add_index "decks", ["wheelbase"], name: "index_decks_on_wheelbase", using: :btree
  add_index "decks", ["width"], name: "index_decks_on_width", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "product_type"
    t.integer  "order_id"
    t.integer  "unit_price",   null: false
    t.integer  "quantity",     null: false
    t.integer  "total_price",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subtotal",        null: false
    t.integer  "tax",             null: false
    t.integer  "shipping",        null: false
    t.integer  "total",           null: false
    t.integer  "order_status_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "picturable_id"
    t.string   "picturable_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "brand",        null: false
    t.string   "hole_pattern", null: false
    t.string   "description",  null: false
    t.float    "width",        null: false
    t.float    "angle",        null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "price"
  end

  add_index "trucks", ["brand"], name: "index_trucks_on_brand", using: :btree
  add_index "trucks", ["hole_pattern"], name: "index_trucks_on_hole_pattern", using: :btree
  add_index "trucks", ["price"], name: "index_trucks_on_price", using: :btree
  add_index "trucks", ["width"], name: "index_trucks_on_width", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",                        null: false
    t.string   "password_digest",                 null: false
    t.string   "session_token",                   null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "wheels", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "brand",         null: false
    t.string   "description",   null: false
    t.string   "lip_profile",   null: false
    t.string   "hub_placement", null: false
    t.integer  "price",         null: false
    t.integer  "diameter",      null: false
    t.integer  "durometer",     null: false
    t.integer  "width",         null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "wheels", ["brand"], name: "index_wheels_on_brand", using: :btree
  add_index "wheels", ["hub_placement"], name: "index_wheels_on_hub_placement", using: :btree
  add_index "wheels", ["lip_profile"], name: "index_wheels_on_lip_profile", using: :btree
  add_index "wheels", ["price"], name: "index_wheels_on_price", using: :btree

  add_foreign_key "order_items", "orders"
end
