class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |table|
      table.string :name, null: false
      table.string :identifier, null: false
      table.integer :author_id
      table.integer :publisher_id
      table.integer :publication_id
      table.integer :language_id
      table.timestamps
    end
    add_index :books, :name
  end
end
