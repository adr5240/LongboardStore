json.products @order_items.each do |item|
    json.partial! 'order_items/order_item', item: item
end

json.extract! @cart, :total, :shipping, :tax, :subtotal
