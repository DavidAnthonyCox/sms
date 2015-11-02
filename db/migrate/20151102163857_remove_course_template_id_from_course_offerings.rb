class RemoveCourseTemplateIdFromCourseOfferings < ActiveRecord::Migration
  def change
    remove_reference :course_offerings, :course_template, index: true
  end
end
