class Order < ActiveRecord::Migration
  def change
      create_table :orders do |t|
          t.integer :user_id, null: false
          t.integer :subtotal, null: false
          t.integer :tax, null: false
          t.integer :shipping, null: false
          t.integer :total, null: false
          t.references :order_status

        t.timestamps null: false
      end
  end
end
