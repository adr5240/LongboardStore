json.partial! "api/bearings/bearing", bearing: @bearing

json.images do
    json.partial! 'api/pictures/picture', collection: @bearing.pictures, as: :picture
end
