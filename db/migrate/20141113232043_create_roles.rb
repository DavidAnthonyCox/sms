class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
# has_many role_list_entry