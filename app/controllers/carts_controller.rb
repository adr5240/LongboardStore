class CartsController < ApplicationController
    before_action :check_privileges!, only: [:index]

    def show
        @cart = current_order
        @order_items = @cart.order_items
    end

    def index
        @carts = Order.all
    end

end
