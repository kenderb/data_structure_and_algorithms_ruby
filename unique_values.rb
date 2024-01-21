# frozen_string_literal: true

# Get the number of unique values in a ordered array
def unique_values(arr)
  left = 0
  right = 1

  while right <= arr.length
    if arr[left] == arr[right]
      right += 1
    else
      left += 1
      arr[left] = arr[right]
    end
  end

  left
end

p unique_values([1, 1, 2, 3, 3]) # 3
p unique_values([1, 1, 2, 3, 3, 4]) # 4
p unique_values([1, 1, 2, 2, 2, 2, 3, 3, 4, 4]) # 4
p unique_values([1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 6, 6, 6, 6, 6]) # 5
p unique_values([1, 1, 2, 2, 2, 2, 3, 4, 4, 6, 6, 6, 6, 6, 7, 7, 7, 8, 9]) # 4
