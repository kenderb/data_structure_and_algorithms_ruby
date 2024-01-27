# frozen_string_literal: true

# Represents a node in a  binary search tree
class Node
  attr_accessor :value, :left, :right, :frequency

  def initialize(value)
    @value = value
    @frequency = 1
    @left = nil
    @right = nil
  end
end
