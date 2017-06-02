json.extract! order_item, :quantity, :total_price, :unit_price, :id

json.product_name order_item.product.name
json.image_url asset_path(order_item.product.pictures[0].image.url)
