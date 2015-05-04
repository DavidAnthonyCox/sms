class CreateOutsideIdentifiers < ActiveRecord::Migration
  # Ex: Entry for Florida Department of Financial Services if that entity uses a school number to identify the school
  def change
    create_table :outside_identifiers do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
# has_many outside_identifier_instances