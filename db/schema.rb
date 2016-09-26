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

ActiveRecord::Schema.define(version: 20160912145323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string   "buyer_name"
    t.string   "buyer_phone"
    t.string   "buyer_township"
    t.text     "buyer_address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frontends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "buyer_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "buyer_id"
    t.string   "buyer_name"
    t.string   "buyer_email"
    t.string   "buyer_phone"
    t.string   "buyer_township"
    t.text     "buyer_address"
    t.integer  "cart_id"
    t.string   "order_status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "actual_price"
    t.string   "discount_price"
    t.integer  "quantity"
    t.text     "specs"
    t.string   "product_category"
    t.string   "pick_up"
    t.string   "ebuy_delivery"
    t.string   "delivery_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
