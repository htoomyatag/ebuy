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

ActiveRecord::Schema.define(version: 20161212024828) do

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
    t.integer  "current_sign_in_ip"
    t.integer  "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

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
    t.integer  "current_sign_in_ip"
    t.integer  "last_sign_in_ip"
  end

  add_index "buyers", ["email"], name: "index_buyers_on_email", unique: true
  add_index "buyers", ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "product_name"
    t.text     "buyer_comment"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "buyer_name"
    t.string   "buyer_id"
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "title"
    t.date     "expire_date"
    t.integer  "limitation"
    t.string   "discount_percentage"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "cover_images", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "cover_photo_file_name"
    t.string   "cover_photo_content_type"
    t.integer  "cover_photo_file_size"
    t.datetime "cover_photo_updated_at"
  end

  create_table "currency_exchanges", force: :cascade do |t|
    t.string   "currency_rate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "frontends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "buyer_id"
    t.integer  "quantity",        default: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "product_size"
    t.string   "product_color"
    t.string   "delivery_method"
  end

  create_table "myapis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "buyer_id"
    t.string   "guest"
    t.string   "buyer_name"
    t.string   "buyer_email"
    t.string   "buyer_phone"
    t.string   "buyer_township"
    t.string   "buyer_city"
    t.text     "buyer_address"
    t.integer  "cart_id"
    t.string   "product_name"
    t.string   "product_size"
    t.string   "product_color"
    t.string   "product_message"
    t.string   "order_status"
    t.string   "payment_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "actual_price"
    t.string   "discount_price"
    t.integer  "quantity"
    t.text     "specsq"
    t.text     "specsa"
    t.string   "product_category"
    t.string   "pick_up"
    t.string   "ebuy_delivery"
    t.string   "delivery_time"
    t.string   "date"
    t.text     "product_video"
    t.string   "product_size"
    t.string   "product_color"
    t.string   "delivery_rate"
    t.string   "product_subcategory"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
    t.string   "other_avatar1_file_name"
    t.string   "other_avatar1_content_type"
    t.integer  "other_avatar1_file_size"
    t.datetime "other_avatar1_updated_at"
    t.string   "other_avatar2_file_name"
    t.string   "other_avatar2_content_type"
    t.integer  "other_avatar2_file_size"
    t.datetime "other_avatar2_updated_at"
    t.string   "other_avatar3_file_name"
    t.string   "other_avatar3_content_type"
    t.integer  "other_avatar3_file_size"
    t.datetime "other_avatar3_updated_at"
    t.string   "other_avatar4_file_name"
    t.string   "other_avatar4_content_type"
    t.integer  "other_avatar4_file_size"
    t.datetime "other_avatar4_updated_at"
    t.string   "other_avatar5_file_name"
    t.string   "other_avatar5_content_type"
    t.integer  "other_avatar5_file_size"
    t.datetime "other_avatar5_updated_at"
    t.string   "product_code_1"
    t.string   "product_code_2"
    t.string   "product_code_3"
    t.string   "product_code_4"
    t.string   "product_code_5"
    t.text     "question"
    t.text     "answer"
    t.text     "notice"
    t.text     "description"
    t.text     "show_at"
    t.datetime "start_to_sell_on"
    t.datetime "end_on"
    t.string   "short_title"
    t.string   "time_sale"
    t.string   "product_model"
  end

  create_table "request_products", force: :cascade do |t|
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
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "wish_lists", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "buyer_id"
    t.string   "product_name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
