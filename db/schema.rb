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

ActiveRecord::Schema.define(version: 20151205013644) do

  create_table "locations", force: true do |t|
    t.boolean  "hollywood"
    t.boolean  "westside"
    t.boolean  "valley"
    t.boolean  "century_city"
    t.integer  "pro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["pro_id"], name: "index_locations_on_pro_id"

  create_table "pros", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.boolean  "weights"
    t.boolean  "yoga"
    t.boolean  "running"
    t.integer  "pro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workouts", ["pro_id"], name: "index_workouts_on_pro_id"

end
