class ActivityType < ActiveRecord::Base
  has_many :activity_note
  default_scope { order('tag') }
end
