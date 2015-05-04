class CreateRoleLists < ActiveRecord::Migration
  def change
    create_table :role_lists do |t|
      t.references :course_offering, index: true, null: false

      t.timestamps
    end
  end
end
#belongs_to course_offering
# has_many role_list_entry