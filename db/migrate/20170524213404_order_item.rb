class OrderItem < ActiveRecord::Migration
  def change
      create_table :order_items do |t|
          t.references :product, polymorphic: true
          t.references :order, index: true, foreign_key: true
          t.integer :unit_price, null: false
          t.integer :quanitity, null: false
          t.integer :total_price, null: false

        t.timestamps null: false
      end
  end
end
