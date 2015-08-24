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

ActiveRecord::Schema.define(version: 20150821202843) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_numbers_id"
    t.integer  "addresses_id"
    t.integer  "emails_id"
    t.integer  "people_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "accounts", ["addresses_id"], name: "index_accounts_on_addresses_id"
  add_index "accounts", ["emails_id"], name: "index_accounts_on_emails_id"
  add_index "accounts", ["people_id"], name: "index_accounts_on_people_id"
  add_index "accounts", ["phone_numbers_id"], name: "index_accounts_on_phone_numbers_id"

  create_table "addresses", force: :cascade do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.integer  "city_id"
    t.integer  "state_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id"
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "homes", force: :cascade do |t|
    t.integer  "people_id"
    t.integer  "addresses_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "utility_id"
  end

  add_index "homes", ["addresses_id"], name: "index_homes_on_addresses_id"
  add_index "homes", ["people_id"], name: "index_homes_on_people_id"
  add_index "homes", ["utility_id"], name: "index_homes_on_utility_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "home_id"
    t.integer  "person_phone_number_id"
  end

  add_index "people", ["home_id"], name: "index_people_on_home_id"
  add_index "people", ["person_phone_number_id"], name: "index_people_on_person_phone_number_id"

  create_table "person_emails", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "person_emails", ["email_id"], name: "index_person_emails_on_email_id"
  add_index "person_emails", ["person_id"], name: "index_person_emails_on_person_id"

  create_table "person_phone_numbers", force: :cascade do |t|
    t.integer  "phone_number_id"
    t.integer  "person_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "person_phone_numbers", ["person_id"], name: "index_person_phone_numbers_on_person_id"
  add_index "person_phone_numbers", ["phone_number_id"], name: "index_person_phone_numbers_on_phone_number_id"

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "phone_number"
    t.integer  "phone_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "phone_numbers", ["phone_type_id"], name: "index_phone_numbers_on_phone_type_id"

  create_table "phone_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "utilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
