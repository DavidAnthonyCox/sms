class CreateActivityNotes < ActiveRecord::Migration
  def change
    create_table :activity_notes do |t|
      t.references :activity_type, index: true, null: false
      t.references :activity_note, index: true
      t.references :person, index: true
      t.integer :logging_person_id, index: true, null: false
      t.references :corporation, index: true
      t.references :tuition, index: true
      t.references :payor, index: true
      t.references :course_provider, index: true
      t.references :course_template, index: true
      t.references :course_offering, index: true
      t.references :system, index: true
      t.text :note, null: false

      t.timestamps
    end
  end
end
# belongs_to [see references above]
# has_many activity_note (in addition to possibly belonging to one)