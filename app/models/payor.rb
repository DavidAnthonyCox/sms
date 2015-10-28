class Payor < ActiveRecord::Base
  belongs_to :person
  belongs_to :organization
  has_many :activity_note
end
