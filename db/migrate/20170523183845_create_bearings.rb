class CreateBearings < ActiveRecord::Migration
  def change
    create_table :bearings do |t|
        t.string :name, null: false
        t.string :brand, null: false
        t.string :material, null: false
        t.string :description, null: false

      t.timestamps null: false
    end
    add_index :bearings, :brand
    add_index :bearings, :material
  end
end
