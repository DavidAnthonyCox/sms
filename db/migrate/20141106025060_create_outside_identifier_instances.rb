class CreateOutsideIdentifierInstances < ActiveRecord::Migration
  def change
    create_table :outside_identifier_instances do |t|
      t.string :value, null: false
      t.references :outside_identifiers, null: false

      t.timestamps
    end
  end
end
# has_many course_provider, course_template, course_offering, person