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

ActiveRecord::Schema.define(version: 20160826213420) do

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "routes", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "route_id"
    t.string   "route_name"
    t.string   "direction_name"
    t.string   "direction_id"
  end

  create_table "stops", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "trip_id"
    t.string   "stop_id"
    t.string   "stop_name"
    t.string   "stop_time"
    t.string   "stop_sequence"
  end

  add_index "stops", ["trip_id"], name: "index_stops_on_trip_id"

  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "direction_id"
    t.string   "trip_id"
    t.string   "route_id"
    t.string   "phone_number"
    t.string   "trip_name"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "departs"
    t.string   "arrives"
    t.string   "line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "trip_id"
    t.string   "trip_name"
    t.string   "direction_id"
    t.string   "direction_name"
    t.integer  "route_id"
  end

  add_index "trips", ["route_id"], name: "index_trips_on_route_id"

end
