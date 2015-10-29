class DeleteRoleList < ActiveRecord::Migration
  def up
    drop_table :role_lists
  end

  def down
    create_table "role_lists", force: true do |t|
     t.integer  "course_offering_id", null: false
     t.datetime "created_at"
     t.datetime "updated_at"
   end
  end
end
