class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :tag, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
# has_many activity_notes