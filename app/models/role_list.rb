class RoleList < ActiveRecord::Base
  belongs_to :course_offering
  has_many :role_list_entry
end
