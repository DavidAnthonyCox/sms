class Identity < ActiveRecord::Base
  belongs_to :person
  belongs_to :organization
  belongs_to :course_template
  belongs_to :course_offering

  validates :value, presence: true
end
