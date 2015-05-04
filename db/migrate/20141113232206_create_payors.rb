class CreatePayors < ActiveRecord::Migration
  def change
    create_table :payors do |t|
      t.references :person, index: true
      t.references :corporation, index: true
      t.references :tuition, index: true, null: false
      t.text :note

      t.timestamps
    end
  end
end
# belongs_to tuition, person, corporation