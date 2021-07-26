class CreateAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :attendings do |t|
      t.date :name
      t.references :students, null: true, foreign_key: true

      t.timestamps
    end
  end
end
