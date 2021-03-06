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

ActiveRecord::Schema.define(version: 20170630235144) do

  create_table "booking_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "club_name"
    t.integer  "number_time_slots"
    t.index ["user_id"], name: "index_booking_requests_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_email"
    t.datetime "date"
    t.string   "club_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "failed_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_email"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "number_slots"
    t.string   "club_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_failed_requests_on_user_id"
  end

  create_table "tea_bookings", force: :cascade do |t|
    t.string   "user_email"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "number_time_slots"
    t.string   "club_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
