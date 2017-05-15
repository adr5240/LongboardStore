json.extract! wheel, :id, :name, :brand, :description, :lip_profile, :hub_placement,
                     :price, :diameter, :durometer, :width

json.image_url asset_path(wheel.image.url)
