class AddTypeToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :identity_type, :string
  end
end
