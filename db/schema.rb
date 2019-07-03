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

ActiveRecord::Schema.define(version: 2019_06_25_185342) do

  create_table "appointments", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.date "date"
    t.time "from_time"
    t.time "to_time"
    t.string "condition"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "specialty"
    t.string "mobile"
    t.string "email"
    t.string "address"
    t.string "password_digest"
    t.string "location"
    t.text "description"
    t.string "gender"
    t.string "department"
    t.string "DOB"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "DOB"
    t.string "ethnicity"
    t.string "gender"
    t.integer "age"
    t.string "mobile"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "postcode"
    t.string "marital_status"
    t.string "profile_pic"
    t.string "blood_group"
    t.string "blood_pressure"
    t.string "initial_note"
    t.text "chronic_conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
