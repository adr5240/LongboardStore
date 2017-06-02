hash = {}
@pictures.each do |picture|
    unless hash[picture.picturable_id]
        hash[picture.picturable_id] = [asset_path(picture.image.url)]
    else
        hash[picture.picturable_id].concat([asset_path(picture.image.url)])
    end
end


json.images hash
