class CreateStudentclasses < ActiveRecord::Migration[6.1]
  def change
    create_table :studentclasses do |t|
      t.string :name
      t.references :students, null: true, foreign_key: true

      t.timestamps
    end
  end
end
