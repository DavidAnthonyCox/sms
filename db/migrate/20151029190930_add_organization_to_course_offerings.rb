class AddOrganizationToCourseOfferings < ActiveRecord::Migration
  def change
    add_reference :course_offerings, :organization, index: true
  end
end
