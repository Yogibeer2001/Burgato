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

ActiveRecord::Schema.define(version: 20160621005723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "burger_places", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_no"
    t.string   "review_score"
    t.integer  "post_code"
    t.string   "suburb"
    t.string   "city"
    t.string   "web_address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "bun"
    t.integer  "patty"
    t.integer  "chips"
    t.integer  "atmosphere"
    t.string   "comment"
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "burger_place_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reviews", ["burger_place_id"], name: "index_reviews_on_burger_place_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "auth_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "reviews", "burger_places"
  add_foreign_key "reviews", "users"
end
