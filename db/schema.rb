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

ActiveRecord::Schema.define(version: 20141006180722) do

  create_table "refuellings", force: true do |t|
    t.date     "date"
    t.integer  "mileage"
    t.decimal  "liter_price"
    t.float    "liters"
    t.string   "gas_station"
    t.float    "average_consumption"
    t.integer  "traveled_mileage"
    t.integer  "vehicle_id"
    t.float    "total_value"
    t.integer  "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.string   "vehicle_model"
    t.string   "fabrication_year"
    t.integer  "user_id"
    t.integer  "mileage"
    t.string   "status"
    t.string   "numberplate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
