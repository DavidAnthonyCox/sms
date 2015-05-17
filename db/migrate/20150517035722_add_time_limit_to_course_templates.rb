class AddTimeLimitToCourseTemplates < ActiveRecord::Migration
  def change
    add_column :course_templates, :time_limit, :integer
  end
end
