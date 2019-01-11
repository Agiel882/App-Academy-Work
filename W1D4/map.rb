class Map

    def initialize
        @map_array = []
    end

    def set(key, value)
        loc = find(key)
        if loc
            loc[1] = value
        else
            @map_array << [key, value]
        end
        [key, value]        
    end
    
    def get(key)
        loc = find(key)
        if loc
            return loc[1]
        else
            return nil
        end
    end

    def delete(key)
        loc = find(key)
        if loc
            @map_array.delete(loc)
            self.show
        else
            return nil
        end
    end

    def show
        @map_array.each{|el| puts(el)}
    end

    private

    def find(key)
        @map_array.each do |el|
            if el[0] == key
                return el
            end
        end
        return nil
    end
end