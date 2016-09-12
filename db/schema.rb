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

ActiveRecord::Schema.define(version: 20160912184720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "downvotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "philosopher_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["philosopher_id"], name: "index_downvotes_on_philosopher_id", using: :btree
    t.index ["user_id"], name: "index_downvotes_on_user_id", using: :btree
  end

  create_table "philosophers", force: :cascade do |t|
    t.string   "name"
    t.string   "birthdate"
    t.string   "concentration"
    t.string   "origin"
    t.string   "wikipedia"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "upvotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "philosopher_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["philosopher_id"], name: "index_upvotes_on_philosopher_id", using: :btree
    t.index ["user_id"], name: "index_upvotes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  create_table "works", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.text     "form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "downvotes", "philosophers"
  add_foreign_key "downvotes", "users"
  add_foreign_key "upvotes", "philosophers"
  add_foreign_key "upvotes", "users"
end
