class AddAttendingsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :attending, null: true, foreign_key: true
  end
end
