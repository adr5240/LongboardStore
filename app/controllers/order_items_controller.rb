class OrderItemsController < ApplicationController
    def create
        @order = current_order
        product_type = params[:order_item][:product_type];
        product_id = params[:order_item][:product_id];
        
        if(@order.order_items.find_by(product_type: product_type, product_id: product_id))
            render json: { :errors => ["That item is already in your cart!"] }, status: 422
        else
            @order_item = @order.order_items.new(order_item_params)
            @order.save
            session[:order_id] = @order.id
            render :show
        end
    end

    def update
        @cart = current_order
        @order_item = @cart.order_items.find(params[:id])
        @order_item.update_attributes(order_item_params)
        @order_items = @cart.order_items
        render 'carts/show'
    end

    def destroy
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.destroy
        @order_items = @order.order_items
    end

    private

    def order_item_params
        params.require(:order_item).permit(:quantity, :id, :product_type, :product_id)
    end
end
