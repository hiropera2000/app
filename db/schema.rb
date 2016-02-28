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

ActiveRecord::Schema.define(version: 20160228121329) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "databases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depts", force: :cascade do |t|
    t.integer  "depno",      precision: 38
    t.string   "dname"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "emps", force: :cascade do |t|
    t.integer  "empno",      precision: 38
    t.string   "ename"
    t.integer  "depno",      precision: 38
    t.integer  "jobno",      precision: 38
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "jobno",      precision: 38
    t.string   "jobname"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "queries", force: :cascade do |t|
    t.integer  "q_num",      precision: 38
    t.integer  "q_select",   precision: 38
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sals", force: :cascade do |t|
    t.integer  "empno",      precision: 38
    t.integer  "finyear",    precision: 38
    t.integer  "salary",     precision: 38
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tab1s", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
  end

  add_index "tab1s", ["id", "end_date"], name: "tab1_uk", unique: true

  create_table "tab2s", force: :cascade do |t|
    t.string "class"
    t.string "zone"
  end

  add_index "tab2s", ["class", "id"], name: "tab2_ix"
  add_index "tab2s", ["id", "class", "zone"], name: "tab2_uk", unique: true

  create_table "tab3s", force: :cascade do |t|
    t.string  "class"
    t.integer "depth", precision: 38
  end

  add_index "tab3s", ["class", "id"], name: "tab3_ix"
  add_index "tab3s", ["id", "class", "depth"], name: "tab3_uk", unique: true

  create_table "tab4s", force: :cascade do |t|
    t.integer "code",  precision: 38
    t.string  "class"
  end

  add_index "tab4s", ["class", "code"], name: "tab4_ix"
  add_index "tab4s", ["code"], name: "tab4_uk", unique: true

  create_table "tab5s", force: :cascade do |t|
    t.string  "class"
    t.string  "data"
    t.integer "num",   precision: 38
  end

  add_index "tab5s", ["class"], name: "tab5_uk", unique: true
  add_index "tab5s", ["data", "class", "num"], name: "tab5_ix1"
  add_index "tab5s", ["num", "data"], name: "tab5_ix2"

end
