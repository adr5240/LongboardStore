json.extract! deck, :id, :name, :brand, :description, :concave, :flex, :mount,
                    :traction, :shape, :price, :length, :width, :wheelbase

json.image_url asset_path(deck.image.url)
