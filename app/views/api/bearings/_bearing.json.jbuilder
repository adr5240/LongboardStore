json.extract! bearing, :id, :name, :brand, :description, :rating, :material, :price

json.images do
    json.partial! 'api/pictures/picture', collection: bearing.pictures, as: :picture
end
