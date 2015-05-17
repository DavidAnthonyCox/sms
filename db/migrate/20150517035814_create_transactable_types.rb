class CreateTransactableTypes < ActiveRecord::Migration
  def change
    create_table :transactable_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
