class CreateSellableTypes < ActiveRecord::Migration
  def change
    create_table :sellable_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
