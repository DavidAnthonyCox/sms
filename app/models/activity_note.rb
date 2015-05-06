class ActivityNote < ActiveRecord::Base
  belongs_to :activity_type
  belongs_to :activity_note
  belongs_to :person
  belongs_to :logging_person, :class_name => 'Person'
  belongs_to :organization
  belongs_to :tuition
  belongs_to :payor
  belongs_to :course_provider
  belongs_to :course_template
  belongs_to :course_offering
  belongs_to :system
  default_scope { order('updated_at') }

  # implement sub-noting later.
  has_many :activity_note

  # I think we will need also the child note inherit the foreign keys of the parent. Controller's job I guess.
end
