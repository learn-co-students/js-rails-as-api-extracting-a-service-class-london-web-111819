class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end

    def to_serialized_json
        options = { 
            include: {
                bird: { except: [:created_at, :updated_at] },
                location: { except: [:created_at, :updated_at] }
            }, 
            except: [:created_at, :updated_at] 
        }
        @sighting.to_json(options)
    end
    
end