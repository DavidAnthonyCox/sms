class AddDefaultNameToCourseTemplate < ActiveRecord::Migration
  def change
    add_column :course_templates, :default_name, :string
  end
end
