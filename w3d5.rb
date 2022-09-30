class Stack
    def initialize
      # create ivar to store stack here!
        @stack_array = Array.new
    end

    def push(el)
      # adds an element to the stack
      @stack_array << el
    end

    def pop
      # removes one element from the stack
      @stack_array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack_array[@stack_array.length-1]
    end
end

# stack = Stack.new
# p stack.push(5)
# p stack
# p stack.push('hi')
# p stack.pop
# p stack
# p stack.peek

class Queue

    def initialize
        @queue_array = Array.new
    end

    def enqueue(el)
        @queue_array << el
    end

    def dequeue
        @queue_array.shift
    end

    def peek
        @queue_array[0]
    end
end

# queue = Queue.new
# queue.enqueue(4)
# queue.enqueue(5)
# p queue.enqueue("six")
# p queue
# p queue.dequeue
# p queue
# p queue.peek

class Map

    def initialize
        @map_arr = Array.new
    end

    def set(key,value)
        has_key = false
        @map_arr.each do |subarr|
            if subarr[0] == key
                subarr[1] = value
                has_key = true
            end
        end
        @map_arr << [key,value] if has_key == false
    end

    def get(key)
        @map_arr.each do |subarr|
            if subarr[0] == key
                return subarr[1]
            end
        end
        nil
    end

    def delete(key)
        has_key = false
        new_arr = []
        @map_arr.each do |subarr|
            if subarr[0] != key
                new_arr << [subarr[0], subarr[1]]
            else
                has_key = true
            end
        end
        if has_key == true
            @map_arr = new_arr
            self
        else
            nil
        end
    end

    def show
        p @map_arr
    end
end

map = Map.new
map.set(5,"hi")
map.set(6,7)
map.set(6,8)
p map
p map.get(6)
p map.get(7)
p map.delete(7)
p map.delete(6)
map.show