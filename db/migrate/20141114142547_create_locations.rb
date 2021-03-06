class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.references :course_offering, index: true
      t.references :organization, index: true

      t.timestamps
    end
  end
end
# belongs_to course_offering, organization
# has_one address