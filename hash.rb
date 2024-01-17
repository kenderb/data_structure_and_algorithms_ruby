# frozen_string_literal: true

class HashTable
  attr_accessor :data

  def initialize(size)
    @data = Array.new(size)
  end

  def set(key, value)
    address = hash(key)
    data[address] = Array.new(0) if data[address].nil?

    return if data[address].find { |h| h[0] == key }

    data[address] << [key, value]
  end

  def get(key)
    address = hash(key)

    data[address].find { |d| d[0] == key }[1]
  end

  private

  def hash(key)
    hash = 0
    key.each_char.with_index do |char, i|
      hash = (hash + char.ord * i) % @data.length
    end
    hash
  end
end

# my_hash_table = HashTable.new(50)
# my_hash_table.set('grapes', 10_000) # You'll need to implement the 'set' method
# my_hash_table.get('grapes') # You'll need to implement the 'get' method
# my_hash_table.set('apples', 9) # You'll need to implement the 'set' method
# my_hash_table.get('apples') # You'll need to implement the 'get' method
