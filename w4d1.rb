class GraphNode

    attr_reader :value
    attr_accessor :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]

        set = [starting_node]
        until queue.empty?
            current_node = queue.shift
            return current_node if current_node.value == target_value
            if !current_node.neighbors.nil?
                current_node.neighbors.each do |node|
                    if !set.include?(node)
                        queue << node
                        set << node
                    end
                end
            end
        end

        nil

    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "f")

