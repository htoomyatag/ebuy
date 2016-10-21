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

ActiveRecord::Schema.define(version: 20160930062215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "buyers", force: :cascade do |t|
    t.string   "buyer_name"
    t.string   "buyer_phone"
    t.string   "buyer_township"
    t.text     "buyer_address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "buyers", ["email"], name: "index_buyers_on_email", unique: true, using: :btree
  add_index "buyers", ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true, using: :btree

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "product_name"
    t.text     "buyer_comment"
    t.integer  "buyer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "title"
    t.date     "expire_date"
    t.integer  "limitation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "frontends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "buyer_id"
    t.integer  "quantity",   default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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
    t.string   "start_to_sell_on"
    t.string   "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
