# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_26_091302) do

  create_table "studentclasses", force: :cascade do |t|
    t.string "name"
    t.integer "students_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["students_id"], name: "index_studentclasses_on_students_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "school_class"
    t.integer "mobile_phone"
    t.integer "line_phone"
    t.integer "studentclass_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studentclass_id"], name: "index_students_on_studentclass_id"
  end

  add_foreign_key "studentclasses", "students", column: "students_id"
  add_foreign_key "students", "studentclasses"
end
