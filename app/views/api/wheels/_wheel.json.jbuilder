json.extract! wheel, :id, :name, :brand, :description, :lip_profile, :hub_placement,
                     :price, :diameter, :durometer, :width

json.images do
    json.partial! 'api/pictures/picture', collection: wheel.pictures, as: :picture
end
