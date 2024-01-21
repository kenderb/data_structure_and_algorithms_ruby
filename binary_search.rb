# frozen_string_literal: true

# Giving an ordered array it Search a value invoking the search class method
class BinarySearcher
  attr_accessor :arr, :min, :max, :mid

  def initialize(arr)
    @arr = arr
    @min = 0
    @max = arr.length - 1
    @mid = 0
  end

  def search(value)
    find_value
    reset_values
    false
  end

  private

  def reset_values
    @min = 0
    @max = arr.length - 1
    @mid = 0
  end

  def find_value
    while min <= max
      @mid = ((min + max) / 2).to_i
      current_element = arr[mid]
      if current_element < value
        @min = mid + 1
      elsif current_element > value
        @max = mid - 1
      else
        return mid
      end
    end
  end
end

arr = BinarySearcher.new([1, 2, 3, 4, 5, 6])
p arr
p arr.search(2)
p arr.search(10)
p arr.search(1)
p arr.search(11)
