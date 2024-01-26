# frozen_string_literal: true

# Represents a node in a  binary search tree
class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
