# frozen_string_literal: true

require './binary_node'

# Represents a BinarySearchTree
class BinarySearchTree
  attr_accessor :root, :visited_dfs_nodes

  def initialize(root = nil)
    @root = root
  end

  def insert(value)
    new_node = Node.new(value)

    return assign_new_root(new_node) unless root

    assign_to_leaf(@root, new_node)
  end

  def find(value)
    return unless root

    current_node = @root

    loop do
      return current_node if current_node.value == value

      if value > current_node.value
        return if current_node.right.nil?

        current_node = current_node.right

      elsif value < current_node.value
        return if current_node.left.nil?

        current_node = current_node.left
      end
    end
  end

  def bfs
    queue = [@root]
    visited_nodes = []

    until queue.empty?
      current_visited = queue.shift
      visited_nodes << current_visited.value
      queue.push(current_visited.left, current_visited.right).compact!
    end

    visited_nodes
  end

  def dfs
    current_node = @root
    visited_nodes = []
    traversal_dfs = lambda do |node|
      visited_nodes << node.value

      traversal_dfs.call(node.left) if node.left
      traversal_dfs.call(node.right) if node.right
    end

    traversal_dfs.call(current_node)

    visited_nodes
  end

  private

  def assign_to_leaf(temp_root, new_node)
    value = new_node.value

    node_traversal_for_assignment(temp_root, new_node, value)
  end

  def node_traversal_for_assignment(temp_root, new_node, value)
    loop do
      return temp_root.frequency += 1 if value == temp_root.value

      if value > temp_root.value
        return assign_node_to_right(temp_root, new_node) if temp_root.right.nil?

        temp_root = temp_root.right
      elsif value < temp_root.value
        return assign_node_to_left(temp_root, new_node) if temp_root.left.nil?

        temp_root = temp_root.left
      end
    end
  end

  def assign_new_root(new_node)
    @root = new_node

    self
  end

  def assign_node_to_right(node, temp_root)
    node.right = temp_root

    self
  end

  def assign_node_to_left(node, temp_root)
    node.left = temp_root

    self
  end
end
