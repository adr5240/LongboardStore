class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
        t.string :name, null: false
        t.string :brand, null: false
        t.string :description, null: false
        t.string :lip_profile, null: false
        t.string :hub_placement, null: false
        t.integer :price, null: false
        t.integer :diameter, null: false
        t.integer :durometer, null: false
        t.integer :width, null: false


      t.timestamps null: false
    end

    add_index :wheels, :brand
    add_index :wheels, :lip_profile
    add_index :wheels, :hub_placement
    add_index :wheels, :price
  end
end
