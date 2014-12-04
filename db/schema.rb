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

ActiveRecord::Schema.define(version: 20141204100656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: true do |t|
    t.integer  "motorcycle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "availabilities", ["motorcycle_id"], name: "index_availabilities_on_motorcycle_id", using: :btree

  create_table "bookings", force: true do |t|
    t.integer  "user_id"
    t.integer  "motorcycle_id"
    t.date     "pickup_date"
    t.time     "pickup_time"
    t.date     "return_date"
    t.time     "return_time"
    t.integer  "total_price"
    t.integer  "rating_motorcycle"
    t.text     "review_motorcycle"
    t.integer  "rating_user"
    t.text     "review_user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookings", ["motorcycle_id"], name: "index_bookings_on_motorcycle_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "booking_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["booking_id"], name: "index_comments_on_booking_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "motorcycles", force: true do |t|
    t.integer  "user_id"
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "production_year"
    t.integer  "engine_size"
    t.string   "engine_type"
    t.integer  "horsepower"
    t.string   "license_plate"
    t.text     "description"
    t.string   "pickup_address"
    t.integer  "longitude"
    t.integer  "latitude"
    t.integer  "autonomy_km"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "motorcycles", ["user_id"], name: "index_motorcycles_on_user_id", using: :btree

  create_table "photos", force: true do |t|
    t.integer  "motorcycle_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "photos", ["motorcycle_id"], name: "index_photos_on_motorcycle_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "name"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
