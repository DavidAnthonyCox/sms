class RoleListEntry < ActiveRecord::Base
  belongs_to :person
  belongs_to :role
  belongs_to :course_offering
end
