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

ActiveRecord::Schema.define(version: 20150910002800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "mana_cost"
  end

  create_table "decks", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.text     "notes"
    t.string   "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "index_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metacards", force: :cascade do |t|
    t.string   "name"
    t.text     "rules_text"
    t.string   "mana_cost"
    t.string   "converted_mana_cost"
    t.integer  "power"
    t.integer  "toughness"
    t.integer  "loyalty"
    t.string   "type_line"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "notes"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "partner"
    t.string   "asset_id"
    t.integer  "volume"
    t.decimal  "price"
    t.string   "channel"
    t.text     "notes"
    t.string   "type"
    t.integer  "partner_trade_id"
    t.string   "currency"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "owner_id"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
