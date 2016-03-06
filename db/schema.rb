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

ActiveRecord::Schema.define(version: 20160227091928) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "nicks", force: :cascade do |t|
    t.integer  "male_id",    limit: 4, null: false
    t.integer  "female_id",  limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sirelines", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "parent_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "thoroughbreds", force: :cascade do |t|
    t.string   "name",         limit: 255,                null: false
    t.string   "type",         limit: 255
    t.integer  "having",       limit: 4,   default: 0,    null: false
    t.integer  "gender",       limit: 4,   default: 0,    null: false
    t.integer  "rank",         limit: 4,   default: 0,    null: false
    t.integer  "growth",       limit: 4,   default: 0,    null: false
    t.integer  "course",       limit: 4,   default: 0,    null: false
    t.integer  "low",          limit: 4,   default: 1000, null: false
    t.integer  "up",           limit: 4,   default: 2000, null: false
    t.integer  "speed",        limit: 4,   default: 0,    null: false
    t.integer  "stamina",      limit: 4,   default: 0,    null: false
    t.integer  "sharp",        limit: 4,   default: 0,    null: false
    t.integer  "guts",         limit: 4,   default: 0,    null: false
    t.integer  "temper",       limit: 4,   default: 0,    null: false
    t.integer  "gate",         limit: 4,   default: 0,    null: false
    t.integer  "position",     limit: 4,   default: 2,    null: false
    t.integer  "small",        limit: 4,   default: 2,    null: false
    t.integer  "right",        limit: 4,   default: 2,    null: false
    t.integer  "left",         limit: 4,   default: 2,    null: false
    t.integer  "condition",    limit: 4,   default: 2,    null: false
    t.integer  "uphill",       limit: 4,   default: 2,    null: false
    t.integer  "sireline1_id", limit: 4
    t.integer  "sireline2_id", limit: 4
    t.integer  "sireline3_id", limit: 4
    t.integer  "sireline4_id", limit: 4
    t.integer  "deft",         limit: 4
    t.integer  "power",        limit: 4
    t.integer  "explosion",    limit: 4
    t.integer  "potential",    limit: 4
    t.integer  "nicks",        limit: 4
    t.integer  "linebreed",    limit: 4
    t.integer  "h_grade1",     limit: 4
    t.integer  "h_arc",        limit: 4
    t.integer  "h_kj6qes",     limit: 4
    t.integer  "h_bcc",        limit: 4
    t.integer  "h_sharp",      limit: 4
    t.integer  "h_guts",       limit: 4
    t.integer  "h_herbivory",  limit: 4
    t.integer  "h_power",      limit: 4
    t.integer  "h_triple",     limit: 4
    t.integer  "h_pantheon",   limit: 4
    t.integer  "h_speed",      limit: 4
    t.integer  "h_stamina",    limit: 4
    t.integer  "h_elite",      limit: 4
    t.integer  "h_weed",       limit: 4
    t.integer  "h_dirt",       limit: 4
    t.integer  "h_gold",       limit: 4
    t.integer  "h_deep",       limit: 4
    t.datetime "deleted_at"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end
