class CreateAttendingsStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :attendings_students do |t|
      t.references :attending, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
