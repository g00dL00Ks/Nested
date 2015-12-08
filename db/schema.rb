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

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
ActiveRecord::Schema.define(version: 20151208195743) do

  create_table "bookings", force: true do |t|
    t.integer  "user_id"
    t.integer  "pro_id"
    t.string   "type"
    t.date     "date"
    t.time     "time"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
<<<<<<< HEAD
=======
=======
ActiveRecord::Schema.define(version: 20151208050725) do
>>>>>>> origin/master
>>>>>>> origin/master

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
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
<<<<<<< HEAD
  end

=======
<<<<<<< HEAD
  end

  create_table "styles", force: true do |t|
    t.integer  "approach"
    t.integer  "intensity"
    t.integer  "plan"
    t.integer  "pro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "styles", ["pro_id"], name: "index_styles_on_pro_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.boolean  "role"
    t.integer  "sessions"
  end

=======
  end

>>>>>>> origin/master
  create_table "styles", force: true do |t|
    t.integer  "approach"
    t.integer  "intensity"
    t.integer  "plan"
    t.integer  "pro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "styles", ["pro_id"], name: "index_styles_on_pro_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.boolean  "role"
    t.integer  "sessions"
  end

<<<<<<< HEAD
=======
>>>>>>> origin/master
>>>>>>> origin/master
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

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
