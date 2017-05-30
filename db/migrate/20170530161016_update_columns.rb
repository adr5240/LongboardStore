class UpdateColumns < ActiveRecord::Migration
  def change
      rename_column :order_items, :quanitity, :quantity
      add_column :orders, :session_id, :string, null: false
      change_column :orders, :user_id, :integer, null: true

      add_index :orders, :session_id
  end
end
