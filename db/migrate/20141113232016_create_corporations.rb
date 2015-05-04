class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name, null: false
      t.text :description
      t.references :outside_identifier_instance

      t.timestamps
    end
  end
end

# has_many email, location, phone, course_provider