class CreateCourseTemplates < ActiveRecord::Migration
  def change
    create_table :course_templates do |t|
      t.references :course_provider, index: true, null: false
      t.string :syllabus_file_path
      # t.string :dfs_identity
      t.references :outside_identifier_instances

      t.timestamps
    end
  end
end
# has_many course_purpose
# belongs_to course_provider