# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  subtotal        :integer          not null
#  tax             :integer          not null
#  shipping        :integer          not null
#  total           :integer          not null
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Order < ActiveRecord::Base
    validates :tax, :shipping, presence: true

    belongs_to :order_status
    belongs_to :user

    has_many :order_items, :dependent => :destroy

    before_create :set_order_status
    before_save :update_subtotal
    before_save :update_total

    def subtotal
        order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
    end

    def tax
        subtotal * 0.06
    end

    def shipping
        1000
    end

    def total
        tax + shipping + subtotal
    end

    private

    def set_order_status
        self.order_status_id = 1
    end

    def update_total
        self[:total] = total
    end

    def update_subtotal
        self[:subtotal] = subtotal
    end
end
