class CreatePaymentCategories < ActiveRecord::Migration
  def change
    create_table :payment_categories do |t|
      t.string :name
      t.references :payment_selection, index: true
      t.text :description

      t.timestamps
    end
  end
end
