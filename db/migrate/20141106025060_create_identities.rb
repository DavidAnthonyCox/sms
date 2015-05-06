class CreateIdentities < ActiveRecord::Migration
  # used for ssn, course number, teacher number, license number
  def change
    create_table :identities do |t|
      t.string :value, null: false
      t.references :organization, null: false
      t.references :person
      t.references :course_provider
      t.references :course_template
      t.references :course_offering

      t.timestamps
    end
  end
end
# has_many course_provider, course_template, course_offering, person