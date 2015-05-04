class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.references :corporation, index: true
      t.references :person, index: true, null: false
      t.string :position, null: false

      t.timestamps
    end
  end
end
