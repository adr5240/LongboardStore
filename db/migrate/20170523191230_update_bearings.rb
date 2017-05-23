class UpdateBearings < ActiveRecord::Migration
  def change
      add_column :bearings, :price, :integer, null: false
      add_column :bearings, :rating, :string, null: false
      add_index :bearings, :price
      add_index :bearings, :rating
  end
end
