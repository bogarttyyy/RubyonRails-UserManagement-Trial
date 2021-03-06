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

ActiveRecord::Schema.define(version: 20140529173832) do

  create_table "logins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
  end

  create_table "logins_roles", id: false, force: true do |t|
    t.integer "login_id"
    t.integer "role_id"
  end

  create_table "roles", force: true do |t|
    t.string   "roletype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userroles", id: false, force: true do |t|
    t.integer "login_id", null: false
    t.integer "role_id",  null: false
  end

end
