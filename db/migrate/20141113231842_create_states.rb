class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :abbreviation, :limit => 2, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
# has_many address