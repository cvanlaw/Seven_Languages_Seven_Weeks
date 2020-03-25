#!/usr/bin/env ruby

class Tree
    attr_accessor :children, :node_name

    def initialize(args={})
        @children = [];
        @node_name = 'root';

        if args.size() == 1
            @node_name = args.keys()[0];
            args[@node_name].each {|k,v| 
                @children.push(
                    Tree.new({k => v})
                    );
                };
        else
            args.each{ |k,v| 
            @children.push(
                Tree.new({k => v})
            );
        };
        end
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

def each_ix

    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
    lastIndex = 0

    numbers.each_index do |x| 
        if x == 0 || x - lastIndex == 4
            print numbers[x], numbers [x+1], numbers[x+2], numbers[x+3], "\n" 
            lastIndex = x
        end
    end
end

def each_slc
    (1..16).each_slice(4) { |x| p x }
end

def tree_visitor
    ruby_tree = Tree.new({'grandpa' => 
        {'dad' => 
            {'child 1' => {}, 
            'child 2' => {} }, 
        'uncle' => 
        {'child 3' => {}, 
        'child 4' => {} } } } )

    puts "Visiting a node"
    ruby_tree.visit{|node| puts node.node_name}
    puts
    puts "Visiting entire tree"
    ruby_tree.visit_all {|node| puts node.node_name}
end

def grep_file
    word = 'roger'
    x = 0
    File.foreach("words_alpha.txt") { |line| 
        puts "#{x}: #{line}" if line.downcase().include? word;
        x = x + 1;
    };
end

puts 'each_index'
each_ix
puts 'each_slice'
each_slc
puts 'tree visitor'
tree_visitor
puts 'grep file'
grep_file