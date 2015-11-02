class CourseOffering < ActiveRecord::Base
  has_many :course_format
  has_many :course_template
  belongs_to :organization
  has_many :identities
  default_scope { order('name') }

  has_many :locations
  has_many :activity_notes

end
