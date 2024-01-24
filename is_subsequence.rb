# frozen_string_literal: true

# Multiple Pointers - isSubsequence
#  isSubsequence which takes in two strings and checks whether the characters in the first string form a
#  subsequence of the characters in the second string.
#   In other words, the function should check whether the characters
# in the first string appear somewhere in the second string,
# without their order changing.
def subsequence?(s, t)
  i = 0
  j = 0

  while j < t.length && i < s.length
    i += 1 if s[i] == t[j]
    j += 1
  end

  i == s.length
end

p subsequence?('hello', 'hello world'); # true
p subsequence?('sing', 'sting'); # true
p subsequence?('abc', 'abracadabra'); # true
p subsequence?('abc', 'acb'); # false (order matters)
p subsequence?('abch', 'acbjsdjch'); # true
p subsequence?('kkkf', 'acbjsdjkkkkkkkkkkkshsucg'); # false
