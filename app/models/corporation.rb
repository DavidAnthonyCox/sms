class Corporation < ActiveRecord::Base
  has_many :email
  has_many :location
  has_many :phone
  has_many :course_provider
  has_many :outside_identifier_instance
  has_many :activity_note
  default_scope { order('name') }
end
