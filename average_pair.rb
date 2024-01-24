# frozen_string_literal: true

# Multiple Pointers - average_pair
# Given a sorted array of integers and a target average,
# determine if there is a pair of values in the array where the average of the pair equals the target average.
# There may be more than one pair that matches the average target.
def average_pair(arr, average)
  return false if arr.empty?

  left = 0
  right = arr.length - 1

  while left < right
    current_average = [arr[left], arr[right]].sum.to_f / 2
    return true if current_average == average

    if current_average < average
      left += 1
    else
      right -= 1
    end
  end
  false
end

p average_pair([1, 2, 3], 2.5) # true
p average_pair([1, 3, 3, 5, 6, 7, 10, 12, 19], 8) # true
p average_pair([-1, 0, 3, 4, 5, 6], 4.1) # false
p average_pair([], 4) # false
