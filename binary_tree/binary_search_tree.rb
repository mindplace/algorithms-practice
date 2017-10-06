# Binary search tree
# node propertes: value, left_child, right_child
# all left_child values should be less than parent node,
# all right_child values should be greater than parent node

class Node
  attr_accessor :value, :left_child, :right_child

  def initialize(value)
    @value = args[:value]
  end

  def has_any_children?
    left_child || right_child
  end

  def valid_node?
    if left_child
      left_check = left_child < value
      return left_check unless left_check
    end

    if right_child
      right_check = right_child > value
      return right_check
    end

    true
  end
end

class BinarySearchTree
  attr_accessor :root

  def initialize(value)
    @root = Node.new(value)
  end

  def add_node(node=root, value)
    if node.value < value
      if node.right_child
        add_node(node.right_child, value)
      else
        node.right_child = Node.new(value)
        return node.right_child
      end

    else
      if node.left_child
        add_node(node.left_child, value)
      else
        node.left_child = Node.new(value)
        return node.left_child
      end
    end
  end

  def balanced? # height of left and right should have no greater difference than 2
  end

  def rebalance # rebalance the tree
  end

  def valid? # all nodes are valid
  end

  def print_tree(tree=root)
    print_tree(tree.left_child) if tree.left_child
    puts tree.value
    print_tree(tree.right_child) if tree.right_child
  end

end

# runner code

tree = BinarySearchTree.new(10)
tree.add_node(20)
tree.add_node(5)
tree.add_node(15)
tree.add_node(35)
tree.add_node(30)
tree.add_node(7)
tree.add_node(11)

tree.print_tree # => 5, 7, 10, 11, 15, 20, 30, 35
