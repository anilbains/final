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

ActiveRecord::Schema.define(version: 0) do

  create_table "group_members", force: true do |t|
    t.integer "user_profile_id"
    t.integer "user_group_id"
  end

  add_index "group_members", ["user_group_id"], name: "index_group_members_on_user_group_id"
  add_index "group_members", ["user_profile_id"], name: "index_group_members_on_user_profile_id"

  create_table "locations", force: true do |t|
    t.string "name"
  end

  create_table "user_groups", force: true do |t|
    t.string  "nameofthegroup"
    t.integer "yearfounded"
  end

  create_table "user_profiles", force: true do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.date    "dateofbirth"
    t.string  "company"
    t.integer "location_id"
  end

  add_index "user_profiles", ["location_id"], name: "index_user_profiles_on_location_id"

end
