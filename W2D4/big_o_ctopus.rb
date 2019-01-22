def n_squared(arr)
    longest = nil
    arr.each do |fish|
        if arr.all?{|fish2| fish.length >= fish2.length}
            longest = fish
        end   
    end
    longest
end

def n_log_n(arr)
    sorted_arr = arr.sort{|val| val.length}
    sorted_arr[0]
end

def linear(arr)
    longest = ""
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ] 

def dance_dance_revolution_linear(direc, tiles)
    tiles.each_with_index{|tile, i| return i if tile == direc}
end

new_tiles_datastructure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7}

def dance_dance_revolution_constant(direc, tiles)
    tiles[direc]
end