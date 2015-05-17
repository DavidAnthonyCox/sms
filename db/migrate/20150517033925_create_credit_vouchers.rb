class CreateCreditVouchers < ActiveRecord::Migration
  def change
    create_table :credit_vouchers do |t|
      t.string :voucher_key
      t.references :transaction, index: true
      t.integer :expiry_days, default: 367
      t.boolean :person_specific, null: false, default: true
      t.references :transactable_type, index: true

      t.timestamps
    end
  end
end
