class CreateRefundMethods < ActiveRecord::Migration
  def change
    create_table :refund_methods do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
