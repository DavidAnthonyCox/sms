class CreateCourseOfferings < ActiveRecord::Migration
  def change
    create_table :course_offerings do |t|
      t.references :course_template, index: true
      t.references :course_format, index: true, null: false
      t.string :name, null: false
      # t.string :dfs_identity
      t.references :outside_identifier_instances
      t.date :start_date, null: false
      t.date :end_date
      t.time :start_time, null: false
      t.time :end_time
      t.string :meeting_days
      t.text :note

      t.timestamps
    end
  end
end
# has_one role_list, location