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

  create_table "user_activities", force: true do |t|
    t.integer  "userprofileid"
    t.integer  "groupprofileid"
    t.datetime "userlastactive"
  end

  create_table "user_groups", force: true do |t|
    t.string  "nameofthegroup"
    t.integer "yearfounded"
    t.integer "adminid"
  end

  create_table "user_profiles", force: true do |t|
    t.string "firstname"
    t.string "lastname"
    t.date   "dateofbirth"
    t.string "permanentlocation"
    t.string "company"
  end

end
