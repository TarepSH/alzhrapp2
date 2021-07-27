class CreateMemorizations < ActiveRecord::Migration[6.1]
  def change
    create_table :memorizations do |t|
      t.string :name
      t.integer :page
      t.integer :part

      t.timestamps
    end
  end
end
