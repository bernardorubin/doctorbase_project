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

ActiveRecord::Schema.define(version: 20170317024241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.string   "field1"
    t.string   "field2"
    t.string   "field3"
    t.string   "field4"
    t.string   "field5"
    t.string   "field6"
    t.string   "field7"
    t.string   "field8"
    t.string   "field9"
    t.text     "text_field1"
    t.text     "text_field2"
    t.text     "text_field3"
    t.text     "text_field4"
    t.text     "text_field5"
    t.text     "text_field6"
    t.text     "text_field7"
    t.integer  "patient_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "field10"
    t.string   "field11"
    t.string   "field12"
    t.string   "field13"
    t.string   "field14"
    t.string   "field15"
    t.string   "field16"
    t.string   "field17"
    t.string   "field18"
    t.string   "field19"
    t.string   "field20"
    t.string   "field21"
    t.string   "field22"
    t.string   "field23"
    t.string   "field24"
    t.string   "field25"
    t.string   "field26"
    t.string   "field27"
    t.string   "field28"
    t.string   "field29"
    t.string   "field30"
    t.boolean  "bool1"
    t.boolean  "bool2"
    t.boolean  "bool3"
    t.boolean  "bool4"
    t.boolean  "bool5"
    t.boolean  "bool6"
    t.boolean  "bool7"
    t.boolean  "bool8"
    t.boolean  "bool9"
    t.boolean  "bool10"
    t.boolean  "bool11"
    t.string   "image"
    t.string   "image2"
    t.string   "image3"
    t.string   "image4"
    t.index ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_models_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "address"
    t.date     "last_appointment"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_patients_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profession"
    t.boolean  "is_admin",               default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "patients", "users"
end
