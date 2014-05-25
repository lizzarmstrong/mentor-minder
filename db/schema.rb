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

ActiveRecord::Schema.define(version: 20140525174948) do

  create_table "events", force: true do |t|
    t.string   "category"
    t.string   "age_group"
    t.string   "topic"
    t.date     "event_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentor_regs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "pending",                          default: true
    t.string   "gender"
    t.boolean  "first_aid_certified",              default: false
    t.string   "phone"
    t.string   "city"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "work"
    t.string   "job"
    t.text     "bio"
    t.text     "why_involved"
    t.string   "emergency_contact"
    t.text     "references"
    t.boolean  "permission_to_contact_references"
    t.integer  "events_count",                     default: 0
  end

  create_table "mentors", force: true do |t|
    t.string   "first_name"
    t.string   "email"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.integer  "events_count",                     default: 0,     null: false
    t.boolean  "first_aid_certified",              default: false
    t.string   "phone"
    t.string   "city"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "work"
    t.string   "job"
    t.text     "bio"
    t.text     "why_involved"
    t.string   "emergency_contact"
    t.text     "references"
    t.boolean  "permission_to_contact_references"
  end

  create_table "sign_ups", force: true do |t|
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "signupable_id"
    t.string   "signupable_type"
  end

  add_index "sign_ups", ["event_id"], name: "index_sign_ups_on_event_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
