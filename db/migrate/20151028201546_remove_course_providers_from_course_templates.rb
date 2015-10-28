class RemoveCourseProvidersFromCourseTemplates < ActiveRecord::Migration
  def change
    remove_reference :course_templates, :course_provider, index: true
  end
end
