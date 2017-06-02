json.partial! "api/wheels/wheel", wheel: @wheel

json.images do
    json.partial! 'api/pictures/picture', collection: @wheel.pictures, as: :picture
end
