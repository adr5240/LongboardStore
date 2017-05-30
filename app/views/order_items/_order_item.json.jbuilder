json.extract! item, :quantity, :total_price

json.product item.product
json.image_url asset_path(item.product.pictures[0].image.url)
