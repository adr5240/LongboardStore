json.extract! truck, :id, :name, :brand, :description, :hole_pattern, :width, :angle, :price

json.image_url asset_path(truck.image.url)
