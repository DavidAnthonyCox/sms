class CreateSellableProducts < ActiveRecord::Migration
  def change
    create_table :sellable_products do |t|
      t.references :product, index: true
      t.references :sellable, index: true

      t.timestamps
    end
  end
end
