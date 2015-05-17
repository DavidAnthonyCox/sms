class SellableCourseTemplate < ActiveRecord::Base
  belongs_to :course_template
  belongs_to :sellable
end
