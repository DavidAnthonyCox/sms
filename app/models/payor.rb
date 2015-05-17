class Payor < ActiveRecord::Base
  belongs_to :person
  belongs_to :organization
  belongs_to :sale
  has_many :activity_note
end
