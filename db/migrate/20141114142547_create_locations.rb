class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.references :course_offering, index: true
      t.references :corporation, index: true

      t.timestamps
    end
  end
end
# belongs_to course_offering, corporation
# has_one address