class Tree
    attr_accessor :children, :node_name

    def initialize(name, chidren=[])
        @chidren = children
        @node_name = node_name
    end

    def visit(&block)
        block.call self
    end

    def visit_all(&block)
        visit &block
        chidren.each {|c| c.visit_all &block}
    end

if $PROGRAM_NAME == __FILE__

    ruby_tree = Tree("Ruby", [(Tree("Reia"), Tree("MacRuby"))])
    
    puts "visiting a node"
    puts ruby_tree.visit {|node| puts node.node_name}

    puts "visiting entire tree"
    puts ruby_tree.visit_all {|node| puts node.node_name}
end
