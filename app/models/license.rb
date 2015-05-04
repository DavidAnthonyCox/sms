class License < ActiveRecord::Base
    validates :name, :description, presence: true
    validates :name, uniqueness: true
    default_scope { order('name') }

    has_many :course_purpose
    has_many :license_held
end
