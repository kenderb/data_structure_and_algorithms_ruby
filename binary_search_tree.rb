# frozen_string_literal: true

require './binary_node'

# Represents a BinarySearchTree
class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def insert(value)
    new_node = Node.new(value)

    return assign_new_root(new_node) unless root

    assign_to_leaf(@root, new_node)
  end

  # TODO: implement this method on your own
  def lookup(value)
    value
  end

  private

  def assign_to_leaf(temp_root, new_node)
    value = new_node.value

    loop do
      if value > temp_root.value
        return assign_node_to_right(temp_root, new_node) if temp_root.right.nil?

        temp_root = temp_root.right
      else
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
