class LRUCache
    attr_reader :size
    attr_accessor :underlying_array

    def initialize(size)
        @underlying_array = []
        @size = size
    end

    def count
      # returns number of elements currently in cache
      underlying_array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        if count == size
            if !underlying_array.include?(el)
                underlying_array.shift
                underlying_array.push(el)
            else
                underlying_array.delete_at(underlying_array.index(el))
                underlying_array.push(el)
            end
        else
            if !underlying_array.include?(el)
                underlying_array.push(el)
            else
                underlying_array.delete_at(underlying_array.index(el))
                underlying_array.push(el)
            end
        end

    end

    def show
      # shows the items in the cache, with the LRU item first
      p underlying_array
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add("I walk the line")
  johnny_cache.add([1,2,3,4])


  johnny_cache.show