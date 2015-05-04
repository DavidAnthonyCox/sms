class Payor < ActiveRecord::Base
  belongs_to :person
  belongs_to :corporation
  belongs_to :tuition
  has_many :activity_note
end
