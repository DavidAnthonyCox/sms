class AddCourseOfferingReferenceToCourseFormats < ActiveRecord::Migration
  def change
    add_reference :course_formats, :course_offering, index: true
  end
end
