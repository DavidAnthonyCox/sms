class Tuition < ActiveRecord::Base
  belongs_to :role_list_entry

  has_many :payor
  has_many :activity_note
end
