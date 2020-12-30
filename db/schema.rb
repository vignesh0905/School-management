# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_17_095209) do

  create_table "attendences", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bloods", force: :cascade do |t|
    t.string "bloodname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "standards", force: :cascade do |t|
    t.text "classroom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.text "rollno"
    t.string "name"
    t.text "classroom"
    t.string "bloodgroup"
    t.string "usertype"
    t.decimal "mark1"
    t.decimal "mark2"
    t.decimal "mark3"
    t.decimal "mark4"
    t.decimal "mark5"
    t.decimal "total"
    t.decimal "average"
    t.string "grade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "teachername"
  end

  create_table "teachers", force: :cascade do |t|
    t.text "empid"
    t.string "name"
    t.text "classroom"
    t.string "bloodgroup"
    t.string "usertype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
