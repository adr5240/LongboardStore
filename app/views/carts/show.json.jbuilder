json.products @order_items.each do |order_item|
    json.partial! 'order_items/order_item', order_item: order_item
end

json.extract! @cart, :total, :shipping, :tax, :subtotal
