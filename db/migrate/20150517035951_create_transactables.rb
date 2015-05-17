class CreateTransactables < ActiveRecord::Migration
  def change
    create_table :transactables do |t|
      t.references :item, index: true
      t.references :transactable_type, index: true
      t.integer :price
      t.boolean :taxable, null: false
      t.boolean :should_prepay, null: false, default: true

      t.timestamps
    end
  end
end
