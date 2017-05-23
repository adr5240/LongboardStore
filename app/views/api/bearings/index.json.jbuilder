@bearings.each do |bearing|
    json.set! bearing.id do
        json.partial! 'bearing', bearing: bearing
    end
end
