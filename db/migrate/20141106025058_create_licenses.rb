class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :name, null: false
      t.text :description
      t.references :issuer

      t.timestamps
    end
  end
end
# has_many course_purpose, person