class AddIdentityToCourseOfferings < ActiveRecord::Migration
  def change
    add_reference :course_offerings, :identity, index: true
  end
end
