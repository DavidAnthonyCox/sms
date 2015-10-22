class CourseTemplate < ActiveRecord::Base
  default_scope { order('default_name') }

  has_many :course_purpose
  has_many :identity
  has_many :activity_note
end
