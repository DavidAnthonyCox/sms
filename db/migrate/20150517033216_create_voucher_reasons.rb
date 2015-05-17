class CreateVoucherReasons < ActiveRecord::Migration
  def change
    create_table :voucher_reasons do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
