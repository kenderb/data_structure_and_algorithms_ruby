# frozen_string_literal: true

# Giving an array it Search a value into the given invoking the search class method
class LinearSearcher
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def search(value)
    arr.each { |item| return true if item == value }

    false
  end
end

arr = LinearSearcher.new([1, 2, 3, 4, 5, 6])
p arr
p arr.search(2)
p arr.search(10)
p arr.search(1)
p arr.search(11)
