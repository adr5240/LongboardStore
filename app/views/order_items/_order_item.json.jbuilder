json.extract! order_item, :quantity, :total_price, :unit_price, :id

json.product order_item.product
json.image_url asset_path(order_item.product.pictures[0].image.url)
