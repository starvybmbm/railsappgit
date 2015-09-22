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

ActiveRecord::Schema.define(version: 20150921210140) do

  create_table "epics", force: :cascade do |t|
    t.text     "content",     limit: 65535
    t.text     "description", limit: 65535
    t.integer  "hours",       limit: 4
    t.integer  "estimate_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "epics", ["estimate_id"], name: "index_epics_on_estimate_id", using: :btree

  create_table "estimates", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "goals", force: :cascade do |t|
    t.text     "content",     limit: 65535
    t.text     "description", limit: 65535
    t.integer  "hours",       limit: 4
    t.integer  "epic_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "goals", ["epic_id"], name: "index_goals_on_epic_id", using: :btree

  add_foreign_key "epics", "estimates"
  add_foreign_key "goals", "epics"
end
