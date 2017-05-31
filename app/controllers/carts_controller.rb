class CartsController < ApplicationController
    def show
        @cart = current_order
        @order_items = @cart.order_items
    end
end
