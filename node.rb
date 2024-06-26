# frozen_string_literal: true

# Represents a node in a linked list.
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end
