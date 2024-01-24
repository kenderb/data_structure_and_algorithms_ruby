# frozen_string_literal: true

require 'rspec'
require './palindrome_permutation'

RSpec.describe 'palindrome_permutation?' do
  context 'when the input string is a permutation of a palindrome' do
    it 'returns true' do
      expect(palindrome_permutation?('Tact Coa')).to be true
    end
  end

  context 'when the input string is a permutation of a palindrome' do
    it 'returns true' do
      expect(palindrome_permutation?('lal oloa')).to be true
    end
  end

  context 'when the input string is not a permutation of a palindrome' do
    it 'returns false' do
      expect(palindrome_permutation?('Hello World')).to be false
    end
  end

  context 'when the input string is not a permutation of a palindrome' do
    it 'returns false' do
      expect(palindrome_permutation?('hay')).to be false
    end
  end
end
