class AddTransactionToActivityNotes < ActiveRecord::Migration
  def change
    add_reference :activity_notes, :transaction, index: true
  end
end
