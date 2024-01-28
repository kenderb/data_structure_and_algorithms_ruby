# frozen_string_literal: true

# Giving an string it search for the matching sub-strings
class SearchString
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def naive_search(value)
    value
  end
end
