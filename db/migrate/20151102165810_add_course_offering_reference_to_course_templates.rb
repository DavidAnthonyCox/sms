class AddCourseOfferingReferenceToCourseTemplates < ActiveRecord::Migration
  def change
    add_reference :course_templates, :course_offering, index: true
  end
end
