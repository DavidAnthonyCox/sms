class AddSaleToActivityNotes < ActiveRecord::Migration
  def change
    add_reference :activity_notes, :sale, index: true
  end
end
