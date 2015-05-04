class CourseTemplate < ActiveRecord::Base
  belongs_to :course_provider
  default_scope { order('default_name') }

  has_many :course_purpose
  has_many :outside_identifier_instance
  has_many :activity_note
end
