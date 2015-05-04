class CoursePurpose < ActiveRecord::Base
  belongs_to :license
  belongs_to :course_template
  default_scope { order('license_id') }
end
