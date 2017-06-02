@wheels.each do |wheel|
    json.set! wheel.id do
        json.partial! 'wheel', wheel: wheel
        json.image_url asset_path(wheel.pictures[0].image.url)
    end
end
