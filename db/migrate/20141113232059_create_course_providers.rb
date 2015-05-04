class CreateCourseProviders < ActiveRecord::Migration
  def change
    create_table :course_providers do |t|
      t.references :corporation, index: true, null: false
      # t.string :dfs_identity
      t.references :outside_identifier_instances

      t.timestamps
    end
  end
end
# belongs_to corporation
# has_many course_template