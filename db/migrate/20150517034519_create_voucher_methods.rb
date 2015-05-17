class CreateVoucherMethods < ActiveRecord::Migration
  def change
    create_table :voucher_methods do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
