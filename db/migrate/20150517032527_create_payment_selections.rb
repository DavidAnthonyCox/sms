class CreatePaymentSelections < ActiveRecord::Migration
  def change
    create_table :payment_selections do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
