class CreateCoursePurposes < ActiveRecord::Migration
  def change
    create_table :course_purposes do |t|
      t.references :license, index: true
      t.references :course_template, index: true
      t.text :description, null: false
      t.boolean :license_qualification, default: false, null: false

      t.timestamps
    end
  end
end
# belongs_to license, course_template