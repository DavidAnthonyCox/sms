class CreateCourseProviders < ActiveRecord::Migration
  def change
    create_table :course_providers do |t|
      t.references :organization, index: true, null: false
      # t.string :dfs_identity

      t.timestamps
    end
  end
end
# belongs_to organization
# has_many course_template