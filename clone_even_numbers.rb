# frozen_string_literal: true

# Giving an array of numbers return the same array with even numbers duplicated
class CloneEvenNumbers
  def self.execute(arr)
    return arr if arr.nil? || arr.empty?

    end_pointer = arr.length
    i = find_last_number(arr)

    while i >= 0
      if arr[i].even?
        end_pointer -= 1
        arr[end_pointer] = arr[i]
      end
      end_pointer -= 1
      arr[end_pointer] = arr[i]
      i -= 1
    end

    arr
  end

  def self.find_last_number(arr)
    i = arr.length - 1
    i -= 1 while i >= 0 && arr[i] == -1

    i
  end
end
