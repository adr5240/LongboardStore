json.extract! truck, :id, :name, :brand, :description, :hole_pattern, :width, :angle, :price

json.images do
    json.partial! 'api/pictures/picture', collection: truck.pictures, as: :picture
end
