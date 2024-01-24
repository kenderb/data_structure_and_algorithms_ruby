# frozen_string_literal: true

# Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palin­ drome.
# A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters.
# The palindrome does not need to be limited to just dictionary words.
# EXAMPLE
# Input: Tact Coa
# Output: True (permutations: "taco cat", "atco eta", etc.) Hints:#106,#121,#134,#136

def palindrome_permutation?(str)
  str = str.gsub(' ', '')
  size = str.length
  has_string = Hash.new(0)
  str.split('').each { |char| has_string[char.downcase] += 1 }

  if size.even?
    has_string.each do |_, value|
      return false unless value.even?
    end
  else
    odd_count = 0
    has_string.each do |_, value|
      odd_count += 1 unless value.even?
      return false if odd_count > 1
    end
  end

  true
end
