class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :contact_category, index: true, null: false
      t.references :organization, index: true
      t.references :person, index: true
      t.references :state, index: true
      t.references :location, index: true
      t.string :street_number, null: false
      t.string :street_name, null: false
      t.string :unit
      t.string :city, null: false
      t.integer :zip

      t.timestamps
    end
  end
end
# belongs_to person, organization, contact_category, state, location