class CreateRoleListEntries < ActiveRecord::Migration
  def change
    create_table :role_list_entries do |t|
      t.references :person, index: true, null: false
      t.references :role, index: true, null: false
      t.references :role_list, index: true, null: false
      t.references :course_offering, index: true, null: false

      t.timestamps
    end
  end
end
# belongs_to person, role, role_list, course_offering
# has_one tuition