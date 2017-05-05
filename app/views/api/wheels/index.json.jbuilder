@wheels.each do |wheel|
    json.set! wheel.id do
        json.partial! 'wheel', wheel: wheel
    end
end
