class OutsideIdentifierInstance < ActiveRecord::Base
  belongs_to :person
  belongs_to :corporation
  belongs_to :course_provider
  belongs_to :course_template
  belongs_to :course_offering
end
