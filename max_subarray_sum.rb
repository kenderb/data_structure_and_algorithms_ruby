# frozen_string_literal: true

# Sliding Window - max_sub_array_sum
# Given an array of integers and a number, write a function called max_sub_array_sum,
# which finds the maximum sum of a sub-array with the length of the number passed to the function.
# Note that a sub-array must consist of consecutive elements from the original array.
# In the first example below, [100, 200, 300] is a sub-array of the original array, but [100, 300] is not.

def max_sub_array_sum(arr, value)
  max_sum = 0
  current_sum = 0
  (0...value).each { |index| max_sum += arr[index] }
 arr.each_index do |num, index|
  current_sum = 
 end
  p max_sum
end

max_sub_array_sum([100, 200, 300, 400], 2) # 700
# max_sub_array_sum([1, 4, 2, 10, 23, 3, 1, 0, 20], 4) # 39
# max_sub_array_sum([-3, 4, 0, -2, 6, -1], 2) # 5
# max_sub_array_sum([3, -2, 7, -4, 1, -1, 4, -2, 1], 2) # 5
# max_sub_array_sum([2, 3], 3) # null
