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

ActiveRecord::Schema.define(version: 20130312221817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "logs", force: true do |t|
    t.string   "driver"
    t.string   "reference_num"
    t.string   "company"
    t.string   "address"
    t.string   "suite_num"
    t.string   "city"
    t.integer  "zip_code",      limit: 5
    t.string     "note"
    t.string   "pick_up"
    t.string   "delivery"
    t.string   "received_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
