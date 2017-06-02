@decks.each do |deck|
    json.set! deck.id do
        json.partial! 'deck', deck: deck
        json.image_url asset_path(deck.pictures[0].image.url)
    end
end
