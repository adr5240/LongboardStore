json.extract! user, :id, :username

json.image do
    json.partial! 'api/pictures/picture', collection: user.picture, as: :picture
end
