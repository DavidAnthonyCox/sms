class RemoveTuitionFromActivityNotes < ActiveRecord::Migration
  def change
    remove_reference :activity_notes, :tuition, index: true
  end
end
