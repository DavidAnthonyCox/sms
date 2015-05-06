class CourseProvider < ActiveRecord::Base
  belongs_to :organization
  has_many :course_template
  has_many :identity
  has_many :activity_note
  default_scope { order('created_at') }
end
