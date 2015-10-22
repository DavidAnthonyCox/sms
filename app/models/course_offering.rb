class CourseOffering < ActiveRecord::Base
  belongs_to :course_format
  belongs_to :course_template
  has_many :identity
  default_scope { order('name') }

  has_one :role_list
  has_one :location
  has_many :organization
  has_many :activity_note
end
