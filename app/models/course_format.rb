class CourseFormat < ActiveRecord::Base
  has_many :course_offering
  default_scope { order('name') }
end
