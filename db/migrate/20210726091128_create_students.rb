class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :school_class
      t.integer :mobile_phone
      t.integer :line_phone
      t.integer :attendings_point
      t.integer :memorizations_point
      t.integer :toltal_point
      t.references :studentclass, null: true, foreign_key: true

      t.timestamps
    end
  end
end
