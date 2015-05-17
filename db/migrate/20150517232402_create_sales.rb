class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :payment_category, index: true
      t.references :payment_selection, index: true
      t.references :sellable, index: true
      t.references :payor, index: true
      t.integer :earned
      t.integer :refunded
      t.integer :debit
      t.integer :credit

      t.timestamps
    end
  end
end
