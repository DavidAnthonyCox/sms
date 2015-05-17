class CreateSellableCourseOfferings < ActiveRecord::Migration
  def change
    create_table :sellable_course_offerings do |t|
      t.references :course_offering, index: true
      t.references :sellable, index: true

      t.timestamps
    end
  end
end
