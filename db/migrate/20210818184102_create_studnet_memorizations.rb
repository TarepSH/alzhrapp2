class CreateStudnetMemorizations < ActiveRecord::Migration[6.1]
  def change
    create_table :studnet_memorizations do |t|
      t.references :student, null: false, foreign_key: true
      t.references :memorization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
