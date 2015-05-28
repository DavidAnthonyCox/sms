class Person < ActiveRecord::Base
  has_many :emails
  has_many :phones
  has_many :addresses
  has_many :employments
  has_many :activity_notes
  has_many :role_list_entries
  has_many :identities
  has_many :activity_note_mades, 
    :class_name => 'ActivityNote', :foreign_key => 'logging_person_id'
  default_scope { order('lastname') }

  accepts_nested_attributes_for :emails, :phones, :employments, 
    :activity_notes, :role_list_entries, :activity_note_mades
  accepts_nested_attributes_for :identities, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

end
