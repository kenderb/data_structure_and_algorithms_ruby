# frozen_string_literal: true

# Giving an ordered array it Search a value invoking the search class method
class BinarySearch
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def search(value)
    left = 0
    right = arr.size

    while left < right
      mid = ((left + right) / 2).ceil

      return mid if arr[mid] == value
      return false if mid == arr.size - 1

      left = mid if value > arr[mid]
      right = mid if value < arr[mid]
    end
  end
end
