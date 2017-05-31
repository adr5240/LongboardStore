@order_items.each do |order_item|
    json.set! order_item.id do
        json.partial! 'order_item', order_item: order_item
    end
end
