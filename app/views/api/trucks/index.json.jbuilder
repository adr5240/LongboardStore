@trucks.each do |truck|
    json.set! truck.id do
        json.partial! 'truck', truck: truck
        json.image_url asset_path(truck.pictures[0].image.url)
    end
end
