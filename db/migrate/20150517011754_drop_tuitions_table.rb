class DropTuitionsTable < ActiveRecord::Migration
  def change
    drop_table :tuitions
  end
end
