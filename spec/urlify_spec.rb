# frozen_string_literal: true

# urlify_spec.rb
require 'rspec'
require './urlify'

describe '#urlify' do
  it 'replaces spaces in a string with "%20"' do
    input = 'Mr John Smith '
    length = 13
    expected_output = 'Mr%20John%20Smith'

    expect(urlify(input, length)).to eq(expected_output)
  end

  it 'handles leading and trailing spaces' do
    input = '  Hello World  '
    length = 11
    expected_output = 'Hello%20World'

    expect(urlify(input, length)).to eq(expected_output)
  end

  it 'handles multiple consecutive spaces' do
    input = 'Hello   World'
    length = 12
    expected_output = 'Hello%20%20%20World'

    expect(urlify(input, length)).to eq(expected_output)
  end
end
