class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end

# has_many email, location, phone, course_provider