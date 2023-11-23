class BinarySearchTree
  class Node
    attr_reader :key, :left, :right

    def initialize(key)
      @key = key
      @left = nil
      @right = nil
    end

    def insert(new_key)
      if new_key <= @key
        @left.nil? ? @left = Node.new(new_key) : @left.insert(new_key)
      elsif new_key > @key
        @right.nil? ? @right = Node.new(new_key) : @right.insert(new_key)
      end
    end
  end

  def initialize
    @root = nil
  end

  def insert(key)
    @root.nil? ? @root = Node.new(key) : @root.insert(key)
  end

  def pre_order(node = @root, &block)
    return if node.nil?

    yield node
    pre_order(node.left, &block)
    pre_order(node.right, &block)
  end

  def in_order(node = @root, &block)
    return if node.nil?

    in_order(node.left, &block)
    yield node
    in_order(node.right, &block)
  end

  def post_order(node = @root, &block)
    return if node.nil?

    post_order(node.left, &block)
    post_order(node.right, &block)
    yield node
  end

  def search(key, node = @root)
    return nil if node.nil?

    if key < node.key
      search(key, node.left)
    elsif key > node.key
      search(key, node.right)
    else
      return node
    end
  end

  def check_height(node)
    return 0 if node.nil?

    left_height = check_height(node.left)
    return -1 if left_height == -1

    right_height = check_height(node.right)
    return -1 if right_height == -1

    diff = left_height - right_height
    diff.abs > 1 ? -1 : [left_height, right_height].max + 1
  end

  def is_balanced?(node = @root)
    check_height(node) != -1
  end
end

# Test cases
tree = BinarySearchTree.new
tree.insert(50)
tree.insert(25)
tree.insert(75)
tree.insert(12)
tree.insert(37)
tree.insert(87)
tree.insert(63)

puts "Binary Search Tree:"
tree.in_order { |node| puts node.key }

puts "Is the tree balanced? #{tree.is_balanced?}"

puts "Pre-order traversal:"
tree.pre_order { |node| puts node.key }

puts "In-order traversal:"
tree.in_order { |node| puts node.key }

puts "Post-order traversal:"
tree.post_order { |node| puts node.key }
