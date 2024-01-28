# frozen_string_literal: true

# search_string_spec.rb
require 'rspec'
require 'pry'
require './search_string'

describe SearchString, type: :class do
  let(:subject) { SearchString.new('wosdwowiuejdwow') }
  describe '#search' do
    context 'when we call it with a value that is in the array' do
      let(:find_value) { 'wow' }

      it 'does not returns nil' do
        expect(subject.naive_search(find_value)).not_to be_nil
      end

      it 'returns the number of found sub-strings' do
        expect(subject.naive_search(find_value)).to eq 2
      end
    end
  end
end
