class CreateContactCategories < ActiveRecord::Migration
  def change
    create_table :contact_categories do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
# leave out has_many for the addresses, phone, and emails. Since we'll probably never search all "home" contacts.