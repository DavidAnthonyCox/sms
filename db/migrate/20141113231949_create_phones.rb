class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :contact_category, index: true, null: false
      t.references :corporation, index: true
      t.references :person, index: true
      t.integer :area_code, null: false
      t.integer :number, null: false
      t.string :extension
      t.text :note

      t.timestamps
    end
  end
end
# belongs_to person, corporation, contact_category