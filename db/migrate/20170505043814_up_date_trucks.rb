class UpDateTrucks < ActiveRecord::Migration
  def change
      remove_column :trucks, :height
  end
end
