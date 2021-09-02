class CreateMemorizationsStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :memorizations_students do |t|
      t.references :memorization, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
