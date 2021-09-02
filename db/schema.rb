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

ActiveRecord::Schema.define(version: 2021_09_02_094605) do

  create_table "attendings", force: :cascade do |t|
    t.date "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attendings_students", force: :cascade do |t|
    t.integer "attending_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attending_id"], name: "index_attendings_students_on_attending_id"
    t.index ["student_id"], name: "index_attendings_students_on_student_id"
  end

  create_table "memorizations", force: :cascade do |t|
    t.string "name"
    t.integer "page"
    t.integer "part"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memorizations_students", force: :cascade do |t|
    t.integer "memorization_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["memorization_id"], name: "index_memorizations_students_on_memorization_id"
    t.index ["student_id"], name: "index_memorizations_students_on_student_id"
  end

  create_table "studentclasses", force: :cascade do |t|
    t.string "name"
    t.integer "students_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "teacher_id"
    t.index ["students_id"], name: "index_studentclasses_on_students_id"
    t.index ["teacher_id"], name: "index_studentclasses_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "school_class"
    t.integer "mobile_phone"
    t.integer "line_phone"
    t.integer "attendings_point"
    t.integer "memorizations_point"
    t.integer "toltal_point"
    t.integer "studentclass_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studentclass_id"], name: "index_students_on_studentclass_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.integer "studentclasses_id"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
    t.index ["studentclasses_id"], name: "index_teachers_on_studentclasses_id"
  end

  add_foreign_key "attendings_students", "attendings"
  add_foreign_key "attendings_students", "students"
  add_foreign_key "memorizations_students", "memorizations"
  add_foreign_key "memorizations_students", "students"
  add_foreign_key "studentclasses", "students", column: "students_id"
  add_foreign_key "studentclasses", "teachers"
  add_foreign_key "students", "studentclasses"
  add_foreign_key "teachers", "studentclasses", column: "studentclasses_id"
end
