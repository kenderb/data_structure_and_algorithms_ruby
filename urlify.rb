# frozen_string_literal: true

# URLify: Write a method to replace all spaces in a string with '%20'.
# You may assume that the string has sufficient space at the end to hold the additional characters,
# and that you are given the "true" length of the string.
# (please use a character array so that you can perform this operation in place.)
# EXAMPLE
# Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith" Hints: #53, #118

def urlify(string, size)
  string = string.strip
  i = 0

  while i < size
    string[i] = '%20' if string[i] == ' '
    i += 1
  end

  string
end
