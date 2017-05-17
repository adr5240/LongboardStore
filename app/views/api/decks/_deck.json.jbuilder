json.extract! deck, :id, :name, :brand, :description, :concave, :flex, :mount,
                    :traction, :shape, :price, :length, :width, :wheelbase

json.images do
    json.partial! 'api/pictures/picture', collection: deck.pictures, as: :picture
end
