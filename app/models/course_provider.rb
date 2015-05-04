class CourseProvider < ActiveRecord::Base
  belongs_to :corporation
  has_many :course_template
  has_many :outside_identifier_instance
  has_many :activity_note
  default_scope { order('created_at') }
end
