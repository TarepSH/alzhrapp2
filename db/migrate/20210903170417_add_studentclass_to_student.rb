class AddStudentclassToStudent < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :studentclass, null: true, foreign_key: true
  end
end
