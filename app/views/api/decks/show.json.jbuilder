json.partial! "api/decks/deck", deck: @deck

json.images do
    json.partial! 'api/pictures/picture', collection: @deck.pictures, as: :picture
end
