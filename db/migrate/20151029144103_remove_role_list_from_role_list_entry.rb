class RemoveRoleListFromRoleListEntry < ActiveRecord::Migration
  def up
    remove_reference :role_list_entries, :role_list
  end

  def down
    add_reference :role_list_entries, :role_list
  end
end
