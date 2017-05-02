class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
        t.string :name, null: false
        t.string :brand, null: false
        t.string :description, null: false
        t.string :concave, null: false
        t.string :flex, null: false
        t.string :mount, null: false
        t.string :traction, null: false
        t.string :shape, null: false
        t.integer :price, null: false
        t.float :length, null: false
        t.float :width, null: false
        t.float :wheelbase, null: false

        t.timestamps null: false
    end
    add_index :decks, :name
    add_index :decks, :brand
    add_index :decks, :concave
    add_index :decks, :flex
    add_index :decks, :mount
    add_index :decks, :traction
    add_index :decks, :shape
    add_index :decks, :price
    add_index :decks, :length
    add_index :decks, :width
    add_index :decks, :wheelbase
  end
end
