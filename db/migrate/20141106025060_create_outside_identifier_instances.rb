class CreateOutsideIdentifierInstances < ActiveRecord::Migration
  def change
    create_table :outside_identifier_instances do |t|
      t.string :value, null: false
      t.references :outside_identifier, null: false
      t.references :person
      t.references :corporation
      t.references :course_provider
      t.references :course_template
      t.references :course_offering

      t.timestamps
    end
  end
end
# has_many course_provider, course_template, course_offering, person