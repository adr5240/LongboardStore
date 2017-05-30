# == Schema Information
#
# Table name: order_items
#
#  id           :integer          not null, primary key
#  product_id   :integer
#  product_type :string
#  order_id     :integer
#  unit_price   :integer          not null
#  quantity     :integer          not null
#  total_price  :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product, polymorphic: true

    validates :product_id, :product_type, :unit_price, :total_price, presence: true
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validate :product_present
    validate :order_present

    before_save :finalize

    def unit_price
        if persisted?
            self[:unit_price]
        else
            product.price
        end
    end

    # TODO Check if this is necessary
    def total_price
        unit_price * quantity
    end

    private

    def product_present
        if product.nil?
            errors.add(:product, "is not valid or is not active.")
        end
    end

    def order_present
        if order.nil?
            errors.add(:order, "is not a valid order.")
        end
    end

    def finalize
        self[:unit_price] = unit_price
        self[:total_price] = quantity * self[:unit_price]
    end
end
