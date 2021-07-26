class AddAdminToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :admin, :boolean, default: false
    add_reference :teachers, :studentclasses, null: true, foreign_key: true
  end
end
