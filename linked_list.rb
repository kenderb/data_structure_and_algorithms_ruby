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

    self
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

  def prepend(data)
    node = Node.new(data)
    current = node
    current.next = @head
    @head = current
    @length += 1

    self
  end
end
