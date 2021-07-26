class AddTeacherToStudentclasses < ActiveRecord::Migration[6.1]
  def change
    add_reference :studentclasses, :teacher, null: true, foreign_key: true
  end
end
