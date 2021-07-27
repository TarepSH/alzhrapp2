class CreateStudnetAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :studnet_attendings do |t|
      t.references :student, null: false, foreign_key: true
      t.references :attending, null: false, foreign_key: true

      t.timestamps
    end
  end
end
