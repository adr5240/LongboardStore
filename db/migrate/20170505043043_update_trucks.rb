class UpdateTrucks < ActiveRecord::Migration
  def change
      add_column :trucks, :price, :integer
      add_index :trucks, :price
  end
end
