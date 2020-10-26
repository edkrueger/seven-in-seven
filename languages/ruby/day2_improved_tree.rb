class Tree
    attr_accessor :children, :node_name

    def initialize(name, children=[])
        @children = children
        @node_name = name
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

# class ImprovedTree < Tree

#     def initialize(name, children=[])

#         super(name, children)

#     end
# end

class ImprovedTree < Tree

    def initialize(tree_hash)

        root = tree_hash.keys[0]
        children = []
        tree_hash[root].each {|k, v| children.push(ImprovedTree.new({k => v}))}
        super(root, children)

    end
end

if $PROGRAM_NAME == __FILE__

    ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])

    puts "visiting a node"
    ruby_tree.visit {|node| puts node.node_name}

    puts "visiting entire tree"
    ruby_tree.visit_all {|node| puts node.node_name}


    improved_tree_input = {'grandpa' => {'dad' => {'child_1' => {}, 'child_2' => {}}, 'uncle' => {'child_3' => {}, 'child_4' => {}}}}

    improved_tree = ImprovedTree.new(improved_tree_input)

    # puts "visiting a node"
    improved_tree.visit {|node| puts node.node_name}

    # puts "visiting entire tree"
    improved_tree.visit_all {|node| puts node.node_name}

end
