class RemoveTuitionFromPayors < ActiveRecord::Migration
  def change
    remove_reference :payors, :tuition, index: true
  end
end
