class CreateSellableCourseTemplates < ActiveRecord::Migration
  def change
    create_table :sellable_course_templates do |t|
      t.references :course_template, index: true
      t.references :sellable, index: true

      t.timestamps
    end
  end
end
