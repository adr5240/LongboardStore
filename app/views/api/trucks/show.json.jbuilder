json.partial! "api/trucks/truck", truck: @truck

json.images do
    json.partial! 'api/pictures/picture', collection: @truck.pictures, as: :picture
end
