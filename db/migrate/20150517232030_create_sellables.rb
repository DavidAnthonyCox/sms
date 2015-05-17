class CreateSellables < ActiveRecord::Migration
  def change
    create_table :sellables do |t|
      t.references :sellable_type, index: true
      t.integer :price
      t.boolean :taxable
      t.boolean :should_prepay

      t.timestamps
    end
  end
end
