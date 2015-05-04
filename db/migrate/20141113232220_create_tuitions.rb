class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.references :role_list_entry, index: true
      t.integer :receivable, default: 0, null: false
      t.integer :paid, default: 0, null: false
      t.integer :refunded, default: 0, null: false
      t.date :date_paid
      t.boolean :earned, default: false, null: false

      t.timestamps
    end
  end
end

# belongs_to role_list_entry
# has_many payor