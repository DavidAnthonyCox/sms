class RemoveCourseFormatIdFromCourseOfferings < ActiveRecord::Migration
  def change
    remove_reference :course_offerings, :course_format, index: true
  end
end
