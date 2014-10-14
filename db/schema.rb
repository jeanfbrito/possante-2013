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

ActiveRecord::Schema.define(version: 20141014152759) do

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "maintenances", force: true do |t|
    t.date    "date"
    t.float   "cost"
    t.text    "description"
    t.date    "warranty_time"
    t.integer "mileage"
    t.integer "vehicle_id"
    t.integer "warranty_status"
    t.integer "maintenance_type"
  end

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
    t.string   "vehicle_brand"
    t.string   "vehicle_model"
    t.string   "fabrication_year"
    t.integer  "user_id"
    t.integer  "mileage"
    t.string   "status"
    t.string   "numberplate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

end
