class CreateLicenseHelds < ActiveRecord::Migration
  # This whole model might be able to be abstracted away to identities
  def change
    create_table :license_helds do |t|
      t.string :license_number, null: false
      t.boolean :active, default: true, null: false
      t.references :license, index: true, null: false
      t.references :person, index: true, null: false

      t.timestamps
    end
  end
end
# belongs_to person, license
