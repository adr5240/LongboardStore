class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
        t.string :name, null: false
        t.string :brand, null: false
        t.string :hole_pattern, null: false
        t.string :description, null: false
        t.float :width, null: false
        t.float :height, null: false
        t.float :angle, null: false

      t.timestamps null: false
    end
    add_index :trucks, :brand
    add_index :trucks, :width
    add_index :trucks, :height
    add_index :trucks, :hole_pattern
  end
end
