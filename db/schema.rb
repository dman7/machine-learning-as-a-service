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

ActiveRecord::Schema.define(version: 20140624200329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "algorithms", force: true do |t|
    t.string "name",              null: false
    t.text   "description",       null: false
    t.string "string_identifier", null: false
  end

  create_table "developers", force: true do |t|
    t.string   "name"
    t.string   "api_key"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "developers", ["email"], name: "index_developers_on_email", unique: true, using: :btree
  add_index "developers", ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true, using: :btree

  create_table "prediction_models", force: true do |t|
    t.integer "algorithm_id",         null: false
    t.integer "training_data_set_id", null: false
    t.text    "parameters"
  end

  create_table "training_data_sets", force: true do |t|
    t.integer "developer_id",      null: false
    t.text    "raw_content",       null: false
    t.text    "processed_content"
  end

end
