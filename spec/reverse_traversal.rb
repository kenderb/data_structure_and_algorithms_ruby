# frozen_string_literal: true

# search_string_spec.rb
require 'rspec'
require 'pry'
require './clone_even_numbers'

describe CloneEvenNumbers, type: :class do
  describe '#execute' do
    context 'when it is call with a valid array' do
      let(:arr) { [1, 4, 5, 2, 10, -1, -1, -1] }

      it 'does return the correct array' do
        expect(CloneEvenNumbers.execute(arr)).to eq [1, 4, 4, 5, 2, 2, 10, 10]
      end
    end

    context 'when it is call with a empty array' do
      let(:arr) { [] }

      it 'does return the correct array' do
        expect(CloneEvenNumbers.execute(arr)).to eq []
      end
    end

    context 'when it is call with a nil value' do
      let(:arr) { nil }

      it 'does return the correct array' do
        expect(CloneEvenNumbers.execute(arr)).to eq nil
      end
    end
  end
end
