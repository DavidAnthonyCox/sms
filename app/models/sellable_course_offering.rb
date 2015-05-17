class SellableCourseOffering < ActiveRecord::Base
  belongs_to :course_offering
  belongs_to :sellable
end
