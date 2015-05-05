class Person < ActiveRecord::Base
  has_many :emails
  has_many :phones
  has_many :addresses
  has_many :employments
  has_many :activity_notes
  has_many :license_helds
  has_many :role_list_entries
  has_many :outside_identifier_instances
  has_many :activity_note_mades, 
    :class_name => 'ActivityNote', :foreign_key => 'logging_person_id'
  default_scope { order('lastname') }

  accepts_nested_attributes_for :emails, :phones, :addresses, :employments, 
    :activity_notes, :license_helds, :role_list_entries, :outside_identifier_instances, 
    :activity_note_mades

end
