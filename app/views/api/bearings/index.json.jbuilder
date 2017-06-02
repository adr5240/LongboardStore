@bearings.each do |bearing|
    json.set! bearing.id do
        json.partial! 'bearing', bearing: bearing
        json.image_url asset_path(bearing.pictures[0].image.url)
    end
end
