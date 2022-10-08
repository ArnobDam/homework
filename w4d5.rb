def sluggish_octopus(arr)

    longest_fish = ""
    (0..arr.length-1).each do |i|
        (0..arr.length-1).each do |j|
            fish_1 = arr[i]
            fish_2 = arr[j]
            if fish_1.length > longest_fish.length && fish_1.length > fish_2.length
                longest_fish = fish_1
            elsif fish_1.length > longest_fish.length && fish_2.length > fish_1.length 
                longest_fish = fish_2
            end
        end
    end
    longest_fish

end
#O(n^2)

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(fish_arr)

def dominant_octopus(arr)
    merge_sort(arr).last
end
#O(nlog(n))

def merge_sort(arr)
    return arr if arr.length < 2

    midpoint = arr.length / 2
    left = arr[0...midpoint]
    right = arr[midpoint..-1]
    merge_sort(left)
    merge_sort(right)

    merge(left, right)
end

def merge(left, right)
    merged_arr = []

    while !left.empty? && !right.empty?
        if (left.first <=> right.first) == -1
            merged_arr << left.shift
        else
            merged_arr << right.shift
        end
    end

       merged_arr.concat(left)
       merged_arr.concat(right)
       
       merged_arr
end

# p dominant_octopus(fish_arr)

def clever_octopus(arr)
    longest_fish = arr.first

    n = 0
    while n < arr.length
        longest_fish = arr[n] if arr[n].length > longest_fish.length
        n += 1
    end

    longest_fish
end
#O(n)

p clever_octopus(fish_arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]



def slow_dance(direction_str, arr)

    n = 0
    while n < arr.length
        return n if arr[n] == direction_str
        n += 1
    end

end
#O(n)

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

def constant_dance(direction_str, hash)
    hash[direction_str]
end
#O(1)

tiles_hash = {}
tiles_array.each {|direction| tiles_hash[direction] = tiles_array.index(direction)}
p tiles_hash

p constant_dance("up", tiles_hash)
p constant_dance("right-down", tiles_hash)

