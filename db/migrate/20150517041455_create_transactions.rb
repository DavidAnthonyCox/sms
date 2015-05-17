class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :payment_type, index: true
      t.references :payment_sub_type, index: true
      t.references :transactable, index: true
      t.references :payor, index: true
      t.integer :earned
      t.integer :refunded
      t.integer :debit
      t.integer :credit

      t.timestamps
    end
  end
end
