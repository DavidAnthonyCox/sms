class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname, null: false
      t.string :middlename
      t.string :lastname, null: false
      t.integer :ssn # might be redundant with :outside_identifier_instances
      # t.string :dfs_identity

      t.timestamps
    end
  end
end

# has_many license_held, email, address, phone, employment, role_list_entry