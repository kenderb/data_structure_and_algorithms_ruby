# frozen_string_literal: true

# Represents a node in a linked list.
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

# Represents a linked list data structure.
class LinkedList
  attr_accessor :head, :tail, :length

  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def append(data)
    node = Node.new(data)
    @tail.next = node
    @tail = node
    @length += 1

    draw
  end

  def draw
    current = head
    linked_list = []
    arrow = '-->'

    while current
      linked_list << "(#{current.data})"
      current = current.next
    end

    "#{linked_list.join(arrow)}#{arrow}nil"
  end

  def insert(index, value)
    return prepend(value) if index.zero?
    return append(value) if index + 1 == length

    node = Node.new(value)
    current = head

    current = traversal(current, index - 1)
    swatch(current, node)

    draw
  end

  def prepend(data)
    node = Node.new(data)
    current = node
    current.next = @head
    @head = current
    @length += 1

    draw
  end

  private

  def traversal(current_node, count)
    count.times do
      current_node = current_node.next
    end

    current_node
  end

  def swatch(current, node)
    temp = current.next
    current.next = node
    node.next = temp
  end
end
