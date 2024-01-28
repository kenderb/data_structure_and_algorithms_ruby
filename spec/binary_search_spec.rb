# frozen_string_literal: true

# urlify_spec.rb
require 'rspec'
require 'pry'
require './binary_search'

describe BinarySearch, type: :class do
  let(:subject) { BinarySearch.new([2, 3, 4, 5, 6, 7, 8, 9, 23, 45, 100, 678]) }
  describe '#search' do
    context 'when we call it with a value that is in the array' do
      let(:find_value) { 45 }
      let(:second_find_value) { 5 }
      let(:last_find_value) { 678 }

      it 'does not returns nil' do
        expect(subject.search(find_value)).not_to be_nil
      end

      it 'returns the correct index' do
        expect(subject.search(find_value)).to eq 9
      end

      it 'returns the correct index' do
        expect(subject.search(second_find_value)).to eq 3
      end

      it 'returns the correct index' do
        expect(subject.search(last_find_value)).to eq 11
      end
    end

    context 'when we call it with a value that is not in the array' do
      let(:find_value) { 0 }

      it 'returns nil' do
        expect(subject.search(find_value)).to be_falsey
      end
    end
  end
end
