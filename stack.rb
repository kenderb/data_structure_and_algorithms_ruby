# frozen_string_literal: true

require './node'

# Represents a Stack using linked list.
class Stack
  attr_accessor :top, :bottom, :length

  def initialize
    @top = nil
    @bottom = nil
    @length = 0
  end

  def peek
    top
  end

  def push(value)
    node = Node.new(value)
    @length += 1
    return create_first_item(node) if @top.nil?

    current = @top
    node.next = current
    @top = node

    draw
  end

  def pop
    return unless @top

    current = @top.next
    @top = current
    @length -= 1

    draw
  end

  private

  def create_first_item(node)
    @top = node
    @bottom = @top

    draw
  end

  def draw
    current = top
    stack = []

    while current
      stack << "(#{current.data})"
      current = current.next
    end

    stack.join('|')
  end
end

# (2)-->(1)-->(12)-->nil?
# pop()
# (1)-->(12)-->nil?
