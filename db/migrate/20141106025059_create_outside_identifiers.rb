class CreateOutsideIdentifiers < ActiveRecord::Migration
  # Ex: State department that registers continuing education classes and teachers.
  def change
    create_table :outside_identifiers do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
# has_many outside_identifier_instances