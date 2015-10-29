class CourseOffering < ActiveRecord::Base
  belongs_to :course_format
  belongs_to :course_template
  belongs_to :organization
  has_many :identities
  default_scope { order('name') }

  has_many :locations
  has_many :activity_notes
end
