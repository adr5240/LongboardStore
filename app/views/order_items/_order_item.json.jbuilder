json.extract! order_item, :quantity, :total_price, :unit_price, :id

json.product_name order_item.product.name
json.product_type order_item.product_type
json.product_id order_item.product.id

json.image_url asset_path(order_item.product.pictures[0].image.url)
