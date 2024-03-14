# frozen_string_literal: true

# Given a sentence, reverse the words of the sentence. For example, "i live in a house" becomes "house a in live i".
class ReverseSentence
  def self.execute(sentence)
    return sentence if sentence.nil? || sentence.empty?

    arr = sentence.split(' ')
    last = arr.length - 1
    first = 0

    while last >= 0 && last != first
      temp = arr[first]
      arr[first] = arr[last]
      arr[last] = temp
      last -= 1
      first += 1
    end

    arr.join(' ')
  end
end
