class CreateCourseFormats < ActiveRecord::Migration
  def change
    create_table :course_formats do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
# has_many course_offering