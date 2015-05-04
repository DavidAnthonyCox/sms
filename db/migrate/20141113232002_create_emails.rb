class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.references :contact_category, index: true, null: false
      t.references :corporation, index: true
      t.references :person, index: true
      t.string :address, null: false

      t.timestamps
    end
  end
end
# belongs_to person, corporation, contact_category