statuses = {
    1 => "In Progress",
    2 => "Placed",
    3 => "Shipped",
    4 => "Cancelled"
}

@carts.each do |cart|
    json.set! cart.id do
        json.extract! cart, :user_id, :total, :order_status_id
        json.order_status statuses[cart.order_status_id]

        if cart.user_id
            json.username User.find(cart.user_id).username
        end
    end
end
